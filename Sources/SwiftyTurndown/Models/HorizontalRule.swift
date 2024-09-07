//
//  HorizontalRule.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum HorizontalRule: String, OptionConvertible {
    case asterisk = "***"
    case minus = "---"
    case underscore = "___"
}

public extension HorizontalRule {
    static let `default` = asterisk
    static let optionName = "hr"
}
