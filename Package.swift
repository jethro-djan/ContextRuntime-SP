// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.17/ContextRuntime.xcframework.zip",
            checksum: "6f34bef3de9b0fb4d8a98b2acca2afd25ef20029fca3072af01941eeafc7a477"
        )
    ]
)
