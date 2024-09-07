//
//  SwiftyTurndown.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/8/23.
//

import Foundation

public struct SwiftyTurndown {
    let configuration: TurndownConfiguration

    public init(configuration: TurndownConfiguration) {
        self.configuration = configuration
    }

    public func markdownify(html: String) throws -> String {
        let escapedHTML = html
            .split(separator: "\n")
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .joined()
            .replacingOccurrences(of: #"""#, with: #"\""#)

        let quoted = """
        "\(escapedHTML)"
        """

        var arguments = [html]
        arguments.append(contentsOf: configuration.arguments)

        return ""
    }
}
