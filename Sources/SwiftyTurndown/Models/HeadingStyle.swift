//
//  HeadingStyle.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum HeadingStyle: String, OptionConvertible, Sendable {
    case atx
    case setext
}

public extension HeadingStyle {
    static let `default`: Self = .setext
    static let optionName = "heading-style"
}
