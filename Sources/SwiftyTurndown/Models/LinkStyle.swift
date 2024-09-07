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
            return "inlined"
        case .referenced(let referenceStyle):
            return "referenced \(referenceStyle.option.joined(separator: " "))"
        }
    }
}

public extension LinkStyle {
    static let `default` = inlined
    static let optionName = "link-style"
}
