//
//  BulletListMarkerTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("BulletListMarker Tests")
struct BulletListMarkerTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(BulletListMarker.optionName == "bullet-list-marker")
    }

    @Test("Default value is asterisk")
    func defaultValue() {
        #expect(BulletListMarker.default == .asterisk)
    }

    @Test("Minus case generates correct option array")
    func minusOption() {
        let marker = BulletListMarker.minus
        #expect(marker.option == ["--bullet-list-marker", "-"])
    }

    @Test("Plus case generates correct option array")
    func plusOption() {
        let marker = BulletListMarker.plus
        #expect(marker.option == ["--bullet-list-marker", "+"])
    }

    @Test("Asterisk case generates correct option array")
    func asteriskOption() {
        let marker = BulletListMarker.asterisk
        #expect(marker.option == ["--bullet-list-marker", "*"])
    }

    @Test("Option value matches raw value", arguments: [
        (BulletListMarker.minus, "-"),
        (.plus, "+"),
        (.asterisk, "*")
    ])
    func optionValueMatchesRawValue(marker: BulletListMarker, expected: String) {
        #expect(marker.optionValue == expected)
        #expect(marker.rawValue == expected)
    }
}
