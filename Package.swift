// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.19/ContextRuntime.xcframework.zip",
            checksum: "2da9ff893b4d4e2b3210587e0609869ef0421b61bc888509c10cc93993e9adb6"
        )
    ]
)
