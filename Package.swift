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
        .binaryTarget(name: "ContextFFI", url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.37/ContextFFI.xcframework.zip", checksum: "4f13de0a407c5fc6e0270920ff23ded84fd0f7ed6d0c0effdd5da582acb344c8"),
        .target(
            name: "ContextRuntime",
            dependencies: [
                .target(name: "ContextFFI")
            ]
        ),
    ]
)