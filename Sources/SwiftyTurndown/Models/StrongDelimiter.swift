//
//  StrongDelimiter.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum StrongDelimiter: String, OptionConvertible {
    case asterisk = "**"
    case underscore = "__"
}

public extension StrongDelimiter {
    static let `default` = asterisk
    static let optionName = "strong-delimiter"
}
