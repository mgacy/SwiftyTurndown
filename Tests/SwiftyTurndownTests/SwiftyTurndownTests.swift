//
//  SwiftyTurndownTests.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/8/23.
//

import Testing
@testable import SwiftyTurndown

@Suite("SwiftyTurndown Tests")
struct SwiftyTurndownTests {

    @Test("Basic HTML to markdown conversion")
    func markdownify() async throws {
        let config = TurndownConfiguration(headingStyle: .atx)
        let sut = try SwiftyTurndown(configuration: config, version: .latest)
        let output = try await sut.markdownify(html: "<h1>Test</h1>")
        #expect(output.trimmingCharacters(in: .whitespacesAndNewlines) == "# Test")
    }

    @Test("Exact version pinning works")
    func exactVersion() async throws {
        let sut = try SwiftyTurndown(version: .exact("0.4.0"))
        let output = try await sut.markdownify(html: "<h1>Test</h1>")
        #expect(!output.isEmpty)
    }

    @Test("Configuration propagates to CLI")
    func configurationPropagation() async throws {
        let config = TurndownConfiguration(
            codeBlockStyle: .fenced(.tilde),
            headingStyle: .atx
        )
        let sut = try SwiftyTurndown(configuration: config)
        let output = try await sut.markdownify(html: "<pre><code>test</code></pre>")
        #expect(output.contains("~~~"))
    }

    @Test("Full page conversion")
    func markdownifyFull() async throws {
        let config = TurndownConfiguration()
        let sut = try SwiftyTurndown(configuration: config)
        let output = try await sut.markdownify(html: Mock.page2)
        print(output)
    }
}
