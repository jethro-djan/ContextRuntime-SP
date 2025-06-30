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
        .binaryTarget(name: "ContextFFI", url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.31/ContextFFI.xcframework.zip", checksum: "f9a25fdc405e71ea9ddfdf2dbe8696926099a233952cbf21ab73fa7630dc734a"),
        .target(
            name: "ContextRuntime",
            dependencies: [
                .target(name: "ContextFFI")
            ]
        ),
    ]
)