//
//  CodeBlockStyle.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum CodeBlockStyle: OptionConvertible, Sendable {
    public enum Fence: String, OptionConvertible {
        case grave = "```"
        case tilde = "~~~"

        static let `default` = grave
        static let optionName = "fence"
    }

    case indented
    case fenced(Fence)

    var optionValue: String {
        switch self {
        case .indented:
            "indented"
        case .fenced(let fence):
            "fenced \(fence.option.joined(separator: " "))"
        }
    }

    var option: [String] {
        switch self {
        case .indented:
            ["--\(Self.optionName)", optionValue]
        case .fenced(let fence):
            ["--\(Self.optionName)", "fenced"] + fence.option
        }
    }
}

public extension CodeBlockStyle {
    static let `default` = indented
    static let optionName = "code-block-style"
}
