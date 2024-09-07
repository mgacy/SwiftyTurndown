//
//  OptionConvertible.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/8/23.
//

import Foundation

protocol OptionConvertible {
    static var optionName: String { get }
    var optionValue: String { get }
}

extension OptionConvertible {
    var option: [String] {
        ["--\(Self.optionName)", optionValue]
    }
}

extension OptionConvertible where Self: RawRepresentable, Self.RawValue == String {
    var optionValue: String {
        rawValue
    }
}
