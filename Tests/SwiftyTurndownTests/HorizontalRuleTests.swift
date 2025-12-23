//
//  HorizontalRuleTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("HorizontalRule Tests")
struct HorizontalRuleTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(HorizontalRule.optionName == "hr")
    }

    @Test("Default value is asterisk")
    func defaultValue() {
        #expect(HorizontalRule.default == .asterisk)
    }

    @Test("Asterisk case generates correct option array")
    func asteriskOption() {
        let rule = HorizontalRule.asterisk
        #expect(rule.option == ["--hr", "***"])
    }

    @Test("Minus case generates correct option array")
    func minusOption() {
        let rule = HorizontalRule.minus
        #expect(rule.option == ["--hr", "---"])
    }

    @Test("Underscore case generates correct option array")
    func underscoreOption() {
        let rule = HorizontalRule.underscore
        #expect(rule.option == ["--hr", "___"])
    }

    @Test("Option value matches raw value", arguments: [
        (HorizontalRule.asterisk, "***"),
        (.minus, "---"),
        (.underscore, "___")
    ])
    func optionValueMatchesRawValue(rule: HorizontalRule, expected: String) {
        #expect(rule.optionValue == expected)
        #expect(rule.rawValue == expected)
    }
}
