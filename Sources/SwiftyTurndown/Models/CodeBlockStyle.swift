//
//  CodeBlockStyle.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum CodeBlockStyle: OptionConvertible {
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
            return "indented"
        case .fenced(let fence):
            return "fenced \(fence.option.joined(separator: " "))"
        }
    }

    var option: [String] {
        switch self {
        case .indented:
            return ["--\(Self.optionName)", optionValue]
        case .fenced(let fence):
            return ["--\(Self.optionName)", "fenced"] + fence.option
        }
    }
}

public extension CodeBlockStyle {
    static let `default` = indented
    static let optionName = "code-block-style"
}
