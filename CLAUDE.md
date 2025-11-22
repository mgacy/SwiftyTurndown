# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

SwiftyTurndown is a Swift wrapper around the turndown-cli Node.js executable that converts HTML to Markdown. It provides a type-safe Swift API for configuring and executing the turndown-cli process.

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
swift test --filter SwiftyTurndownTests.testMarkdownify
```

## Architecture

### Core Components

**SwiftyTurndown** (`Sources/SwiftyTurndown/SwiftyTurndown.swift:17`)
- Main entry point that wraps turndown-cli execution
- Takes `TurndownConfiguration` and a path to the turndown-cli executable
- `markdownify(html:)` method converts HTML string to Markdown by spawning the turndown-cli process
- Uses `Process+Utils` extension to execute the CLI and capture output

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

**Process Execution** (`Sources/SwiftyTurndown/Process+Utils.swift:16`)
- Extension on `Process` with `run(_:arguments:)` method
- Captures both stdout and stderr in a single pipe
- Throws error with stderr content if process exits with non-zero status
- Returns trimmed stdout on success

### External Dependencies

**turndown-cli Executable**
- The Swift package wraps a Node.js CLI tool (turndown-cli)
- Path is currently hardcoded in `Constants.turndownPath` (Sources/SwiftyTurndown/SwiftyTurndown.swift:11-14)
- This is a local development path that needs to be resolved for production use

**ReleaseExecutor**

### Platform Requirements

- macOS 13.0+
- Swift 5.9+
