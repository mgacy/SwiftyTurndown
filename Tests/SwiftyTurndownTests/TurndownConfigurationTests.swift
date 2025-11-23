//
//  TurndownConfigurationTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("TurndownConfiguration Tests")
struct TurndownConfigurationTests {

    @Test("Empty configuration generates empty arguments array")
    func emptyConfiguration() {
        let config = TurndownConfiguration()
        #expect(config.arguments.isEmpty)
    }

    @Test("Single option generates correct arguments")
    func singleOption() {
        let config = TurndownConfiguration(headingStyle: .atx)
        #expect(config.arguments == ["--heading-style", "atx"])
    }

    @Test("Multiple simple options generate correct combined arguments")
    func multipleSimpleOptions() {
        let config = TurndownConfiguration(
            emDelimiter: .asterisk,
            headingStyle: .atx,
            strongDelimiter: .underscore
        )
        #expect(config.arguments == [
            "--em-delimiter", "*",
            "--heading-style", "atx",
            "--strong-delimiter", "__"
        ])
    }

    @Test("Configuration with nested option (fenced code block) generates correct arguments")
    func nestedCodeBlockOption() {
        let config = TurndownConfiguration(
            codeBlockStyle: .fenced(.tilde),
            headingStyle: .atx
        )
        #expect(config.arguments == [
            "--code-block-style", "fenced", "--fence", "~~~",
            "--heading-style", "atx"
        ])
    }

    @Test("Configuration with nested option (referenced link) generates correct arguments")
    func nestedLinkOption() {
        let config = TurndownConfiguration(
            headingStyle: .setext,
            linkStyle: .referenced(.collapsed)
        )
        #expect(config.arguments == [
            "--heading-style", "setext",
            "--link-style", "referenced", "--link-reference-style", "collapsed"
        ])
    }

    @Test("Full configuration with all options generates correct combined arguments")
    func fullConfiguration() {
        let config = TurndownConfiguration(
            bulletListMarker: .minus,
            codeBlockStyle: .fenced(.tilde),
            emDelimiter: .asterisk,
            headingStyle: .atx,
            horizontalRule: .minus,
            linkStyle: .referenced(.shortcut),
            strongDelimiter: .underscore
        )
        #expect(config.arguments == [
            "--bullet-list-marker", "-",
            "--code-block-style", "fenced", "--fence", "~~~",
            "--em-delimiter", "*",
            "--heading-style", "atx",
            "--hr", "---",
            "--link-style", "referenced", "--link-reference-style", "shortcut",
            "--strong-delimiter", "__"
        ])
    }

    @Test("Configuration with indented code block style (no nested option)")
    func indentedCodeBlockStyle() {
        let config = TurndownConfiguration(
            codeBlockStyle: .indented,
            headingStyle: .atx
        )
        #expect(config.arguments == [
            "--code-block-style", "indented",
            "--heading-style", "atx"
        ])
    }

    @Test("Configuration with inlined link style (no nested option)")
    func inlinedLinkStyle() {
        let config = TurndownConfiguration(
            headingStyle: .atx,
            linkStyle: .inlined
        )
        #expect(config.arguments == [
            "--heading-style", "atx",
            "--link-style", "inlined"
        ])
    }

    @Test("Configuration arguments match TurndownCLI expected format")
    func matchesCLIFormat() {
        let config = TurndownConfiguration(
            bulletListMarker: .plus,
            codeBlockStyle: .fenced(.grave),
            emDelimiter: .underscore,
            headingStyle: .atx,
            horizontalRule: .underscore,
            linkStyle: .referenced(.full),
            strongDelimiter: .asterisk
        )

        let args = config.arguments

        // Verify all arguments are in pairs (flag + value) or groups (flag + value + nested flag + nested value)
        #expect(args.count == 18) // 7 options, with 2 nested options = 18 total elements

        // Verify format: all flags start with --
        let flags = args.enumerated().compactMap { index, arg in
            arg.hasPrefix("--") ? arg : nil
        }
        #expect(flags.count == 9) // 7 main flags + 2 nested flags

        // Verify specific flag-value pairs are present
        #expect(args.contains("--bullet-list-marker"))
        #expect(args.contains("+"))
        #expect(args.contains("--code-block-style"))
        #expect(args.contains("fenced"))
        #expect(args.contains("--fence"))
        #expect(args.contains("```"))
        #expect(args.contains("--em-delimiter"))
        #expect(args.contains("_"))
        #expect(args.contains("--heading-style"))
        #expect(args.contains("atx"))
        #expect(args.contains("--hr"))
        #expect(args.contains("___"))
        #expect(args.contains("--link-style"))
        #expect(args.contains("referenced"))
        #expect(args.contains("--link-reference-style"))
        #expect(args.contains("full"))
        #expect(args.contains("--strong-delimiter"))
        #expect(args.contains("**"))
    }
}
