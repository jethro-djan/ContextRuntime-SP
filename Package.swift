// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.18/ContextRuntime.xcframework.zip",
            checksum: "130cd31053d4ea1c40ba7eb31b79ac737095fc702fd644ba9e166281a7de7ced"
        )
    ]
)
