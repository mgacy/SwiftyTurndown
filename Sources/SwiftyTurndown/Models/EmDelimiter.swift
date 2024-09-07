//
//  EmDelimiter.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum EmDelimiter: String, OptionConvertible, Sendable {
    case underscore = "_"
    case asterisk = "*"
}

public extension EmDelimiter {
    static let `default` = underscore
    static let optionName = "em-delimiter"
}
