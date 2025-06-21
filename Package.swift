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
        .binaryTarget(name: "ContextFFI", url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.26/ContextFFI.xcframework.zip", checksum: "f9a78da5f72341d619bb8f60d3d1a3f3b4db4ea9c341cff14c9e703a3591ba32"),
        .target(
            name: "ContextRuntime",
            dependencies: [
                .target(name: "ContextFFI")
            ]
        ),
    ]
)