//
//  EmDelimiterTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("EmDelimiter Tests")
struct EmDelimiterTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(EmDelimiter.optionName == "em-delimiter")
    }

    @Test("Default value is underscore")
    func defaultValue() {
        #expect(EmDelimiter.default == .underscore)
    }

    @Test("Underscore case generates correct option array")
    func underscoreOption() {
        let delimiter = EmDelimiter.underscore
        #expect(delimiter.option == ["--em-delimiter", "_"])
    }

    @Test("Asterisk case generates correct option array")
    func asteriskOption() {
        let delimiter = EmDelimiter.asterisk
        #expect(delimiter.option == ["--em-delimiter", "*"])
    }

    @Test("Option value matches raw value", arguments: [
        (EmDelimiter.underscore, "_"),
        (.asterisk, "*")
    ])
    func optionValueMatchesRawValue(delimiter: EmDelimiter, expected: String) {
        #expect(delimiter.optionValue == expected)
        #expect(delimiter.rawValue == expected)
    }
}
