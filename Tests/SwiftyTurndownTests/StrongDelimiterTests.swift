//
//  StrongDelimiterTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("StrongDelimiter Tests")
struct StrongDelimiterTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(StrongDelimiter.optionName == "strong-delimiter")
    }

    @Test("Default value is asterisk")
    func defaultValue() {
        #expect(StrongDelimiter.default == .asterisk)
    }

    @Test("Asterisk case generates correct option array")
    func asteriskOption() {
        let delimiter = StrongDelimiter.asterisk
        #expect(delimiter.option == ["--strong-delimiter", "**"])
    }

    @Test("Underscore case generates correct option array")
    func underscoreOption() {
        let delimiter = StrongDelimiter.underscore
        #expect(delimiter.option == ["--strong-delimiter", "__"])
    }

    @Test("Option value matches raw value", arguments: [
        (StrongDelimiter.asterisk, "**"),
        (.underscore, "__")
    ])
    func optionValueMatchesRawValue(delimiter: StrongDelimiter, expected: String) {
        #expect(delimiter.optionValue == expected)
        #expect(delimiter.rawValue == expected)
    }
}
