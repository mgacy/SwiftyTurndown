//
//  CodeBlockStyleTests.swift
//  SwiftyTurndown
//
//  Created by SwiftyTurndown Tests
//

import Testing
@testable import SwiftyTurndown

@Suite("CodeBlockStyle Tests")
struct CodeBlockStyleTests {

    @Test("Option name is correct")
    func optionName() {
        #expect(CodeBlockStyle.optionName == "code-block-style")
    }

    @Test("Default value generates correct option array")
    func defaultValue() {
        let defaultStyle = CodeBlockStyle.default
        #expect(defaultStyle.option == ["--code-block-style", "indented"])
    }

    @Test("Indented case generates correct option array")
    func indentedOption() {
        let style = CodeBlockStyle.indented
        #expect(style.option == ["--code-block-style", "indented"])
    }

    @Test("Fenced with grave generates correct option array with nested fence option")
    func fencedGraveOption() {
        let style = CodeBlockStyle.fenced(.grave)
        #expect(style.option == ["--code-block-style", "fenced", "--fence", "```"])
    }

    @Test("Fenced with tilde generates correct option array with nested fence option")
    func fencedTildeOption() {
        let style = CodeBlockStyle.fenced(.tilde)
        #expect(style.option == ["--code-block-style", "fenced", "--fence", "~~~"])
    }

    @Suite("Fence Nested Type Tests")
    struct FenceTests {

        @Test("Fence option name is correct")
        func fenceOptionName() {
            #expect(CodeBlockStyle.Fence.optionName == "fence")
        }

        @Test("Fence default value is grave")
        func fenceDefaultValue() {
            #expect(CodeBlockStyle.Fence.default == .grave)
        }

        @Test("Grave fence generates correct option array")
        func graveOption() {
            let fence = CodeBlockStyle.Fence.grave
            #expect(fence.option == ["--fence", "```"])
        }

        @Test("Tilde fence generates correct option array")
        func tildeOption() {
            let fence = CodeBlockStyle.Fence.tilde
            #expect(fence.option == ["--fence", "~~~"])
        }

        @Test("Fence option value matches raw value", arguments: [
            (CodeBlockStyle.Fence.grave, "```"),
            (.tilde, "~~~")
        ])
        func fenceOptionValueMatchesRawValue(fence: CodeBlockStyle.Fence, expected: String) {
            #expect(fence.optionValue == expected)
            #expect(fence.rawValue == expected)
        }
    }
}
