# SwiftyTurndown

SwiftyTurndown is a Swift package that provides a simple interface to convert HTML to Markdown using the [Turndown](https://github.com/mixmark-io/turndown) library. It leverages the Turndown CLI tool to perform the conversion, making it easy to integrate HTML-to-Markdown functionality into Swift applications.

## Installation

Add `ReleaseExecutor` to your Swift package by including it in your `Package.swift` file:

```swift
.package(url: "https://github.com/mgacy/SwiftyTurndown.git", from: "0.1.0")
```

Then, add the product to any targets that need access to the library:

```swift
.product(name: "SwiftyTurndown", package: "SwiftyTurndown")
```

## Usage

Import the `SwiftyTurndown` module and use the `SwiftyTurndown` class to convert HTML to Markdown:

```swift
import SwiftyTurndown

let turndown = SwiftyTurndown()
let html = "<h1>Hello, world!</h1>"
let markdown = try await turndown.markdownify(html: html)
print(markdown)
```

### Configuration

You can customize the conversion process by providing options when initializing the `SwiftyTurndown` instance. For example:

```swift
import SwiftyTurndown

let config = TurndownConfiguration(
    bulletListMarker: .minus,
    codeBlockStyle: .fenced(.tilde),
    emDelimiter: .asterisk,
    headingStyle: .atx,
    horizontalRule: .minus,
    linkStyle: .referenced(.shortcut),
    strongDelimiter: .underscore
)

let turndown = SwiftyTurndown(configuration: config)
let html = "<h1>Hello, world!</h1>"
let markdown = try await turndown.markdownify(html: html)
print(markdown)
```

## Acknowledgements

SwiftyTurndown uses the Turndown library developed by [mixmark-io](https://github.com/mixmark-io/turndown) to perform the HTML-to-Markdown conversion.

## License

SwiftyTurndown is released under the MIT License. See [LICENSE](LICENSE) for details.
