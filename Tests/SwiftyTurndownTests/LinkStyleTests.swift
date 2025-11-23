//
//  LinkStyleTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("LinkStyle Tests")
struct LinkStyleTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(LinkStyle.optionName == "link-style")
    }

    @Test("Default value generates correct option array")
    func defaultValue() {
        let defaultStyle = LinkStyle.default
        #expect(defaultStyle.option == ["--link-style", "inlined"])
    }

    @Test("Inlined case generates correct option array")
    func inlinedOption() {
        let style = LinkStyle.inlined
        #expect(style.option == ["--link-style", "inlined"])
    }

    @Test("Referenced with full generates correct option array with nested reference style option")
    func referencedFullOption() {
        let style = LinkStyle.referenced(.full)
        #expect(style.option == ["--link-style", "referenced", "--link-reference-style", "full"])
    }

    @Test("Referenced with collapsed generates correct option array with nested reference style option")
    func referencedCollapsedOption() {
        let style = LinkStyle.referenced(.collapsed)
        #expect(style.option == ["--link-style", "referenced", "--link-reference-style", "collapsed"])
    }

    @Test("Referenced with shortcut generates correct option array with nested reference style option")
    func referencedShortcutOption() {
        let style = LinkStyle.referenced(.shortcut)
        #expect(style.option == ["--link-style", "referenced", "--link-reference-style", "shortcut"])
    }
}

@Suite("ReferenceStyle Nested Type Tests")
struct ReferenceStyleTests {

    @Test("ReferenceStyle option name is correct")
    func referenceStyleOptionName() {
        #expect(LinkStyle.ReferenceStyle.optionName == "link-reference-style")
    }

    @Test("Full reference style generates correct option array")
    func fullOption() {
        let refStyle = LinkStyle.ReferenceStyle.full
        #expect(refStyle.option == ["--link-reference-style", "full"])
    }

    @Test("Collapsed reference style generates correct option array")
    func collapsedOption() {
        let refStyle = LinkStyle.ReferenceStyle.collapsed
        #expect(refStyle.option == ["--link-reference-style", "collapsed"])
    }

    @Test("Shortcut reference style generates correct option array")
    func shortcutOption() {
        let refStyle = LinkStyle.ReferenceStyle.shortcut
        #expect(refStyle.option == ["--link-reference-style", "shortcut"])
    }

    @Test("ReferenceStyle option value matches raw value", arguments: [
        (LinkStyle.ReferenceStyle.full, "full"),
        (.collapsed, "collapsed"),
        (.shortcut, "shortcut")
    ])
    func referenceStyleOptionValueMatchesRawValue(refStyle: LinkStyle.ReferenceStyle, expected: String) {
        #expect(refStyle.optionValue == expected)
        #expect(refStyle.rawValue == expected)
    }
}
