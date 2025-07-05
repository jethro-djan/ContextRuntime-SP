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
        .binaryTarget(name: "ContextFFI", url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.35/ContextFFI.xcframework.zip", checksum: "0e4ebe855aa5745961c1dda58d1f09e699ae975be6c5f9bf1f7595e7fb2b9f0a"),
        .target(
            name: "ContextRuntime",
            dependencies: [
                .target(name: "ContextFFI")
            ]
        ),
    ]
)