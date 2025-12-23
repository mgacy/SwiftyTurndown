//
//  BulletListMarker.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

public enum BulletListMarker: String, OptionConvertible, Sendable {
    case minus = "-"
    case plus = "+"
    case asterisk = "*"
}

public extension BulletListMarker {
    static let `default` = asterisk
    static let optionName = "bullet-list-marker"
}
