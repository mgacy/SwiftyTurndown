//
//  LinkStyle.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum LinkStyle: OptionConvertible, Sendable {
    public enum ReferenceStyle: String, OptionConvertible, Sendable {
        case full
        case collapsed
        case shortcut

        static let optionName = "link-reference-style"
    }

    case inlined
    case referenced(ReferenceStyle)

    public var optionValue: String {
        switch self {
        case .inlined:
            "inlined"
        case .referenced:
            "referenced"
        }
    }

    public var option: [String] {
        switch self {
        case .inlined:
            ["--\(Self.optionName)", optionValue]
        case .referenced(let referenceStyle):
            ["--\(Self.optionName)", optionValue] + referenceStyle.option
        }
    }
}

public extension LinkStyle {
    static let `default` = inlined
    static let optionName = "link-style"
}
