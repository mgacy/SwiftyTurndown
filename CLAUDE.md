# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

SwiftyTurndown is a Swift wrapper around the turndown-cli Node.js executable that converts HTML to Markdown. It provides a type-safe Swift API for configuring and executing the turndown-cli process. The package automatically downloads and manages the turndown-cli executable from GitHub releases using ReleaseExecutor.

## Development Commands

### Building
```bash
swift build
```

### Running Tests
```bash
swift test
```

### Run a Single Test
```bash
swift test --filter SwiftyTurndownTests.testAsyncMarkdownify
```

## Usage Example

```swift
import SwiftyTurndown

// Basic usage with latest version
let turndown = SwiftyTurndown()
let markdown = try await turndown.markdownify(html: "<h1>Hello World</h1>")
// Result: "# Hello World"

// With configuration
let config = TurndownConfiguration(
    codeBlockStyle: .fenced(.tilde),
    headingStyle: .atx
)
let turndown = SwiftyTurndown(configuration: config, version: .latest)
let markdown = try await turndown.markdownify(html: "<h1>Title</h1><pre><code>code</code></pre>")

// Pin to specific version
let turndown = SwiftyTurndown(version: .exact("0.3.0"))
let markdown = try await turndown.markdownify(html: "<p>Hello</p>")
```

## Architecture

### Core Components

**SwiftyTurndown** (`Sources/SwiftyTurndown/SwiftyTurndown.swift`)
- Main entry point that wraps turndown-cli execution
- Takes `TurndownConfiguration`, `ReleaseVersion`, and optional `cacheDirectory`
- `markdownify(html:)` async method converts HTML string to Markdown
- Automatically downloads turndown-cli executable on first use via ReleaseExecutor
- Uses CapturingExecutor to capture stdout while leveraging ReleaseExecutor's orchestration

**CapturingExecutor** (`Sources/SwiftyTurndown/CapturingExecutor.swift`)
- Custom executor implementing ReleaseExecutor's `Executing` protocol
- Captures stdout from turndown-cli process using Subprocess
- Uses actor isolation for thread-safe output capture
- Streams stderr to logger while collecting stdout lines

**TurndownConfiguration** (`Sources/SwiftyTurndown/Models/TurndownConfiguration.swift:12`)
- Configuration struct containing all turndown options
- All properties are optional, allowing users to specify only desired options
- `arguments` property converts configuration to CLI arguments array

**Configuration Models** (`Sources/SwiftyTurndown/Models/`)
Each configuration option is a separate type:
- `CodeBlockStyle` - supports nested options (e.g., `fenced` with `Fence` type)
- `LinkStyle` - supports nested options (e.g., `referenced` with `ReferenceStyle` type)
- `BulletListMarker`, `EmDelimiter`, `HeadingStyle`, `HorizontalRule`, `StrongDelimiter` - simple enum types

### Key Design Patterns

**OptionConvertible Protocol** (`Sources/SwiftyTurndown/OptionConvertible.swift:10`)
- Protocol that configuration types conform to
- Defines `optionName` (static) and `optionValue` (instance) properties
- Provides default `option` implementation that returns `["--optionName", "optionValue"]`
- RawRepresentable enums automatically get `optionValue` from their `rawValue`

**Nested Options**
Some configuration types have nested options (e.g., `CodeBlockStyle.fenced(Fence)` or `LinkStyle.referenced(ReferenceStyle)`). These override the default `option` property to include nested option arguments:
- `CodeBlockStyle.fenced(.tilde)` produces: `["--code-block-style", "fenced", "--fence", "~~~"]`
- `LinkStyle.referenced(.collapsed)` produces nested reference style arguments

**Async Execution with Auto-Download**
- `markdownify()` is an async function that automatically handles executable download
- On first run: Downloads ~45-51MB executable (10-30 seconds) from GitHub releases
- Subsequent runs: Uses cached executable (instant execution)
- Cache location: `~/Library/Caches/SwiftyTurndown/turndown-cli/{version}/{asset-name}`
- Version pinning: Use `.latest` for most recent release or `.exact("0.3.0")` for specific version

### External Dependencies

**ReleaseExecutor** (`Package.swift`)
- Manages automatic download and caching of turndown-cli executable
- Fetches releases from GitHub repository: `mgacy/TurndownCLI`
- Handles platform detection (macOS arm64/x64)
- Provides version management (.latest or .exact)
- Local package dependency (path-based during development)

**turndown-cli Executable**
- Node.js CLI tool that performs HTML to Markdown conversion
- Automatically downloaded from GitHub releases on first use
- Platform-specific binaries: `turndown-cli-{os}-{arch}`
- Cached locally after download for subsequent runs

**Subprocess** (via ReleaseExecutor)
- Used by CapturingExecutor to spawn and manage turndown-cli process
- Provides async process execution with stdout/stderr streaming

**AsyncHTTPClient** (via ReleaseExecutor)
- Used for downloading executable from GitHub releases

### Platform Requirements

- macOS 13.0+
- Swift 5.9+
- Internet connection on first run (for executable download)

## Cache Behavior

First run (no cache):
1. SwiftyTurndown checks cache directory: `~/Library/Caches/SwiftyTurndown/`
2. ReleaseExecutor fetches release info from GitHub API
3. Downloads platform-specific executable (~45-51MB, 10-30 seconds)
4. Caches executable in version-specific directory
5. Executes turndown-cli and returns markdown

Subsequent runs (with cache):
1. SwiftyTurndown finds cached executable
2. Immediately executes turndown-cli (no download)
3. Returns markdown (fast execution)

Multiple versions can coexist in cache, each in its own directory.

## Code Style

### General Guidelines

- Use explicit types for public APIs
- Prefer computed properties over methods for simple getters
- Use guard statements for early returns
- Mark models as Sendable for Swift 6 concurrency
- Keep functions under 50 lines (enforced by SwiftLint)
- Use descriptive variable names (not `i`, `j`, but `lineIndex`, `headerLevel`)

#### File Naming
- `TypeName.swift` for primary type definitions
- `TypeName+Extension.swift` or `TypeName+Utils.swift` for extensions
- `TypeName+Protocol.swift` for protocol conformances

### File Structure

Every file should start with a standard header comment block:

```swift
//
//  FileName.swift
//  ModuleName
//
//  Created by Author Name on MM/DD/YY.
//
```

- Organize imports alphabetically

### Protocol Conformance

#### Standard Pattern

Declare multiple conformances in the type declaration:

```swift
public struct UserProfile: Codable, Equatable, Identifiable, Sendable {
    // Implementation
}
```

#### Sendable Protocol

Always include `Sendable` for types used in concurrent contexts:

```swift
public struct AppError: Error, LocalizedError, Sendable { }
public enum Handedness: Codable, Equatable, Sendable { }
```

#### Protocol Extensions

Use extensions to organize protocol conformance implementations:

```swift
// MARK: - CustomStringConvertible
extension ObjectClass: CustomStringConvertible {
    public var description: String {
        switch self {
        case .basketball: return "Basketball"
        case .hoop: return "Hoop"
        }
    }
}
```

### Extension Usage

Extensions are preferred for:
1. **Adding utility methods to standard types**
2. **Organizing protocol conformances**
3. **Breaking up large type implementations**
4. **Grouping related functionality**

```swift
// MARK: - Floating Point Operations
public extension Array where Element: FloatingPoint {
    var mean: Element { sum / Element(count) }
    var sum: Element { reduce(Element(0), +) }
}
```

### Error Handling

- Prefer using typed throwing errors over generic `Error`

### Indentation and Formatting

- Use **4 spaces** for indentation (Swift standard)
- Wrap long parameter lists across multiple lines
- Align parameters vertically when wrapping

```swift
public init(
    id: UUID,
    name: String,
    height: Measurement<UnitLength>,
    handedness: Handedness
) {
    self.id = id
    self.name = name
    self.height = height
    self.handedness = handedness
}
```

### Documentation

- Include a single line between sections
- Maximum line length of 100 characters in documentation
- Use punctuation and complete sentences
- Document all public properties

<example>
```swift
/// A Swift package target.
struct Target: Equatable, Sendable {

    /// A plug-in used in a target.
    struct PluginUsage: Equatable, Sendable {
        /// The name of the plug-in target.
        let name: String

        /// The name of the package defining the plug-in target.
        let package: String?
    }

    /// A resource to bundle with the Swift package.
    struct Resource: Equatable, Sendable {

        /// The different types of localization for resources.
        public enum Localization: String, Codable, Equatable, Sendable {
            /// The default localization.
            case base
            /// The base internationalization.
            case `default`
        }

        /// The different rules for resources.
        enum Rule: Equatable, Sendable {
            /// A rule that copies the resource.
            case copy
            /// A rule that embeds the resource in code.
            case embedInCode
            /// A rule that processes the resource with a specific localization.
            case process(_ localization: Localization?)
        }

        /// The rule for the resource.
        let rule: Rule

        /// The path of the resource.
        let path: String
    }

    /// The different types of a target.
    enum TargetType: String, Sendable {
        /// A target that contains code for the Swift package's functionality.
        case regular = "target"
        /// A target that contains code for an executable's main module.
        case executable = "executableTarget"
        /// A target that contains tests for the Swift package's other targets.
        case test = "testTarget"
    }

    /// The name of the target.
    let name: String

    /// The type of the target.
    let type: TargetType

    /// A Boolean value determining whether access to package declarations from other targets in
    /// the package is allowed.
    let packageAccess: Bool

    /// The path of the target, relative to the package root.
    let path: String?

    /// Creates an instance.
    ///
    /// - Parameters:
    ///   - name: The name of the target.
    ///   - type: The type of the target.
    ///   - packageAccess: Whether access to package declarations from other targets in the package
    ///   is allowed.
    ///   - path: The path of the target, relative to the package root.
    init(
        name: String,
        type: Target.TargetType = .regular,
        packageAccess: Bool = true,
        path: String? = nil
    ) {
        self.name = name
        self.type = type
        self.packageAccess = packageAccess
        self.path = path
    }
}
```
</example>
