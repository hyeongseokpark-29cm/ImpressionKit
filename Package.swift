// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ImpressionKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ImpressionKit",
            targets: ["ImpressionKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/623637646/SwiftHook.git", "3.3.0"..<"4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ImpressionKit",
            dependencies: [
              "SwiftHook",
              "SwiftHookOCSources",
            ],
            path: "ImpressionKit"
        ),
        .testTarget(
            name: "ImpressionKitTests",
            dependencies: ["ImpressionKit"]),
    ]
)
