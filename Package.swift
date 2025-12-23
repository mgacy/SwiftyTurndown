// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyTurndown",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "SwiftyTurndown", targets: ["SwiftyTurndown"])
    ],
    dependencies: [
        .package(url: "https://github.com/mgacy/ReleaseExecutor.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "SwiftyTurndown",
            dependencies: [
                "ReleaseExecutor"
            ]
        ),
        .testTarget(
            name: "SwiftyTurndownTests",
            dependencies: ["SwiftyTurndown"]
        )
    ]
)
