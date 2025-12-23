//
//  TurndownConfiguration.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/8/23.
//

import Foundation

public struct TurndownConfiguration: Sendable {
    var bulletListMarker: BulletListMarker?
    var codeBlockStyle: CodeBlockStyle?
    var emDelimiter: EmDelimiter?
    var headingStyle: HeadingStyle?
    var horizontalRule: HorizontalRule?
    var linkStyle: LinkStyle?
    var strongDelimiter: StrongDelimiter?

    public init(
        bulletListMarker: BulletListMarker? = nil,
        codeBlockStyle: CodeBlockStyle? = nil,
        emDelimiter: EmDelimiter? = nil,
        headingStyle: HeadingStyle? = nil,
        horizontalRule: HorizontalRule? = nil,
        linkStyle: LinkStyle? = nil,
        strongDelimiter: StrongDelimiter? = nil
    ) {
        self.bulletListMarker = bulletListMarker
        self.codeBlockStyle = codeBlockStyle
        self.emDelimiter = emDelimiter
        self.headingStyle = headingStyle
        self.horizontalRule = horizontalRule
        self.linkStyle = linkStyle
        self.strongDelimiter = strongDelimiter
    }

    var arguments: [String] {
        var args = [String]()
        if let bulletListMarker {
            args.append(contentsOf: bulletListMarker.option)
        }
        if let codeBlockStyle {
            args.append(contentsOf: codeBlockStyle.option)
        }
        if let emDelimiter {
            args.append(contentsOf: emDelimiter.option)
        }
        if let headingStyle {
            args.append(contentsOf: headingStyle.option)
        }
        if let horizontalRule {
            args.append(contentsOf: horizontalRule.option)
        }
        if let linkStyle {
            args.append(contentsOf: linkStyle.option)
        }
        if let strongDelimiter {
            args.append(contentsOf: strongDelimiter.option)
        }

        return args
    }
}
