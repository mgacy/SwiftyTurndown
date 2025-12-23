//
//  CodeBlockStyle.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum CodeBlockStyle: OptionConvertible, Sendable {
    public enum Fence: String, OptionConvertible, Sendable {
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
        case .fenced:
            "fenced"
        }
    }

    var option: [String] {
        switch self {
        case .indented:
            ["--\(Self.optionName)", optionValue]
        case .fenced(let fence):
            ["--\(Self.optionName)", optionValue] + fence.option
        }
    }
}

public extension CodeBlockStyle {
    static let `default` = indented
    static let optionName = "code-block-style"
}
