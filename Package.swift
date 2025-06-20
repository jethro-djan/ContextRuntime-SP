// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.21/ContextRuntime.xcframework.zip",
            checksum: "7ad38627b3107d3130939be7d740689e740495e05e8515e1d07934b619ed8437"
        )
    ]
)
