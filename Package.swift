// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyTurndown",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .library(name: "SwiftyTurndown", targets: ["SwiftyTurndown"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftyTurndown",
            dependencies: [
            ]
        ),
        .testTarget(
            name: "SwiftyTurndownTests",
            dependencies: ["SwiftyTurndown"]
        )
    ]
)
