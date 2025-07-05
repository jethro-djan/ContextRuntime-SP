// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: ContextRuntime

import PackageDescription;

let package = Package(
    name: "ContextRuntime",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ContextRuntime",
            targets: ["ContextRuntime"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "ContextFFI", url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.38/ContextFFI.xcframework.zip", checksum: "ec784a4d80430b738589ad4f4fb86f1b4ca61b54c2ed1abb5d53ac8a31c17194"),
        .target(
            name: "ContextRuntime",
            dependencies: [
                .target(name: "ContextFFI")
            ]
        ),
    ]
)