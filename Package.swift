// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyUserDefaults",
    platforms: [.iOS("8.0"), .macOS("10.11"), .tvOS("9.0"), .watchOS("2.0")],
    products: [
        .library(
            name: "SwiftyUserDefaults",
            targets: ["SwiftyUserDefaults"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "8.0.2"))
    ],
    targets: [
        .target(
            name: "SwiftyUserDefaults",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "SwiftyUserDefaultsTests",
            dependencies: ["SwiftyUserDefaults", "Quick", "Nimble"]),
    ]
)
