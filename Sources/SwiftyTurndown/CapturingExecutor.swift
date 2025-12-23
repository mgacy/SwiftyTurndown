//
//  CapturingExecutor.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 11/23/25.
//

import Foundation
import Logging
import ReleaseExecutor
import Subprocess
import TSCBasic
#if canImport(System)
import System
#else
import SystemPackage
#endif

/// Creates an Executor that captures stdout output instead of printing it.
actor CapturedOutputStorage {
    private(set) var capturedOutput: String = ""

    /// Appends the given line to the captured output.
    ///
    /// - Parameter line: The line to append.
    func append(_ line: String) {
        if capturedOutput.isEmpty {
            capturedOutput = line
        } else {
            capturedOutput += "\n" + line
        }
    }

    /// Returns the captured output
    func getOutput() -> String {
        capturedOutput
    }
}

extension Executor {
    /// Creates an Executor that captures stdout output instead of printing it.
    ///
    /// - Parameters:
    ///   - logger: The logger to use.
    ///   - storage: The storage to use for capturing output.
    /// - Returns: An Executor that captures stdout output.
    static func capturing(logger: Logger, storage: CapturedOutputStorage) -> Executor {
        .init(run: { executablePath, directory, arguments in
            let allArguments = [executablePath.pathString] + arguments
            logger.debug("Executing: \(allArguments.joined(separator: " "))")

            _ = try await Subprocess.run(
                .path(FilePath(executablePath.pathString)),
                arguments: Arguments(arguments),
                workingDirectory: FilePath(directory.pathString)
            ) { execution, standardInputWriter, standardOutput, standardError in
                try await withThrowingTaskGroup(of: Void.self) { group in
                    group.addTask {
                        for try await line in standardOutput.lines() {
                            await storage.append(line)
                        }
                    }

                    group.addTask {
                        for try await line in standardError.lines() {
                            logger.error("\(line)")
                        }
                    }

                    try await group.waitForAll()
                }
            }
        })
    }
}
