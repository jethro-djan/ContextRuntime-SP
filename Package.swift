// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextFFI",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextFFI", targets: ["ContextFFI"])],
    targets: [
        .binaryTarget(
            name: "ContextFFI",
            url: "https://github.com/jethro-djan/ContextRuntime-SP/releases/download/v0.0.23/ContextFFI.xcframework.zip",
            checksum: "37646d73f8be16ac6820af78583dca90c4a2ed9299b7ed54e51dc7865b8d04f3"
        )
    ]
)
