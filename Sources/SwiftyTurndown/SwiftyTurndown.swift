//
//  SwiftyTurndown.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/8/23.
//

import Foundation
import ReleaseExecutor
import TSCBasic
import Logging
import AsyncHTTPClient
import Subprocess

/// SwiftyTurndown is a Swift wrapper for the Turndown CLI tool.
public struct SwiftyTurndown: Sendable {
    private let logger: Logger = Logger(label: "com.mgacy.SwiftyTurndown")
    let cacheDirectory: AbsolutePath
    let configuration: TurndownConfiguration
    let version: ReleaseVersion

    /// Creates an instance.
    ///
    /// - Parameters:
    ///   - cacheDirectory: The directory to use for caching.
    ///   - configuration: The configuration to use.
    ///   - version: The version of the tool to use.
    public init(
        cacheDirectory: AbsolutePath,
        configuration: TurndownConfiguration = TurndownConfiguration(),
        version: ReleaseVersion = .latest
    ) {
        self.configuration = configuration
        self.version = version
        self.cacheDirectory = cacheDirectory
    }

    /// Creates an instance.
    ///
    /// - Parameters:
    ///   - configuration: The configuration to use.
    ///   - version: The version of the tool to use.
    public init(
        configuration: TurndownConfiguration = TurndownConfiguration(),
        version: ReleaseVersion = .latest
    ) throws {
        self.cacheDirectory = try Self.defaultCacheDirectory()
        self.configuration = configuration
        self.version = version
    }

    /// Converts the given HTML to Markdown.
    ///
    /// - Parameter html: The HTML string to convert.
    /// - Returns: The converted Markdown string.
    public func markdownify(html: String) async throws -> String {
        // Create storage for captured output
        let storage = CapturedOutputStorage()
        let entryPoint = EntryPoint.gitHub(
            owner: "mgacy",
            repo: "TurndownCLI",
            executableName: "turndown-cli",
            version: version,
            cacheDirectory: cacheDirectory,
            executor: .capturing(logger: logger, storage: storage)
        )

        var arguments = [html]
        arguments.append(contentsOf: configuration.arguments)

        try await entryPoint.run(
            arguments: arguments,
            directory: localFileSystem.currentWorkingDirectory ?? (try AbsolutePath(validating: "/"))
        )

        // Return captured output
        return await storage.getOutput()
    }
}

private extension SwiftyTurndown {
    static func defaultCacheDirectory() throws -> AbsolutePath {
        #if os(macOS)
        let cacheURL = URL.cachesDirectory
        #elseif os(Linux)
        // Use XDG_CACHE_HOME if set, otherwise ~/.cache (XDG Base Directory Specification)
        let cacheURL: URL
        if let xdgCache = ProcessInfo.processInfo.environment["XDG_CACHE_HOME"] {
            cacheURL = URL(fileURLWithPath: xdgCache)
        } else {
            cacheURL = FileManager.default.homeDirectoryForCurrentUser
                .appendingPathComponent(".cache")
        }
        #else
        // Fallback for other platforms
        let cacheURL = FileManager.default.temporaryDirectory
        #endif

        return try AbsolutePath(validating: cacheURL.path())
            .appending(component: "SwiftyTurndown")
    }

    static func downloadFile(url: URL, path: AbsolutePath) async throws {
        let httpClient = HTTPClient(eventLoopGroupProvider: .singleton)

        var clientRequest = try HTTPClient.Request(url: url, method: .GET)
        clientRequest.headers.add([.userAgent()])

        let delegate = try FileDownloadDelegate(
            path: path.pathString,
            reportProgress: { _ in }
        )

        try await withCheckedThrowingContinuation { (continuation: CheckedContinuation<Void, Error>) in
            httpClient.execute(request: clientRequest, delegate: delegate)
                .futureResult
                .whenComplete { result in
                    switch result {
                    case .success:
                        continuation.resume()
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                }
        }

        try await httpClient.shutdown()
    }
}
