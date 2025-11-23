//
//  Process+Utils.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/16/23.
//

import Foundation

extension String: LocalizedError {
    public var errorDescription: String? { self }
}

extension Process {
    // https://stackoverflow.com/a/73623395/4472195
    func run(_ executableURL: URL, arguments: [String]? = nil) throws -> String {
        self.executableURL = executableURL
        self.arguments = arguments

        let pipe = Pipe()
        standardOutput = pipe
        standardError = pipe

        try run()
        waitUntilExit()

        guard terminationStatus == EXIT_SUCCESS else {
            let error = String(data: pipe.fileHandleForReading.readDataToEndOfFile(), encoding: .utf8)
            throw (error?.trimmingCharacters(in: .newlines) ?? "")
        }

        let output = String(data: pipe.fileHandleForReading.readDataToEndOfFile(), encoding: .utf8)
        return output?.trimmingCharacters(in: .newlines) ?? ""
    }
}
