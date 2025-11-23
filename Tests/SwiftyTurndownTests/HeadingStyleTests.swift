//
//  HeadingStyleTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("HeadingStyle Tests")
struct HeadingStyleTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(HeadingStyle.optionName == "heading-style")
    }

    @Test("Default value is setext")
    func defaultValue() {
        #expect(HeadingStyle.default == .setext)
    }

    @Test("ATX case generates correct option array")
    func atxOption() {
        let style = HeadingStyle.atx
        #expect(style.option == ["--heading-style", "atx"])
    }

    @Test("Setext case generates correct option array")
    func setextOption() {
        let style = HeadingStyle.setext
        #expect(style.option == ["--heading-style", "setext"])
    }

    @Test("Option value matches raw value", arguments: [
        (HeadingStyle.atx, "atx"),
        (.setext, "setext")
    ])
    func optionValueMatchesRawValue(style: HeadingStyle, expected: String) {
        #expect(style.optionValue == expected)
        #expect(style.rawValue == expected)
    }
}
