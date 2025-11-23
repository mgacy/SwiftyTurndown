//
//  OptionConvertible.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/8/23.
//

import Foundation

/// A class of types that can be converted to command line options.
protocol OptionConvertible {
    /// The name of the command line option.
    static var optionName: String { get }

    /// The value of the command line option.
    var optionValue: String { get }
}

extension OptionConvertible {
    /// The command line option as an array of strings.
    var option: [String] {
        ["--\(Self.optionName)", optionValue]
    }
}

extension OptionConvertible where Self: RawRepresentable, Self.RawValue == String {
    var optionValue: String {
        rawValue
    }
}
