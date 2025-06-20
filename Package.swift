// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.20/ContextRuntime.xcframework.zip",
            checksum: "542d93e3ff8393a059a2d886ed671e6039475fb002d1bc1d46a724439efb568d"
        )
    ]
)
