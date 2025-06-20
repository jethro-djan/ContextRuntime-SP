// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.22/ContextRuntime.xcframework.zip",
            checksum: "84a0c909fdb3181984d6c537b3eac60eb27b93cf47eea39c18ff41f4c5440dbd"
        )
    ]
)
