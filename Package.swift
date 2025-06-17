// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ContextRuntime",
    platforms: [.iOS(.v16)],
    products: [.library(name: "ContextRuntime", targets: ["ContextRuntime"])],
    targets: [
        .binaryTarget(
            name: "ContextRuntime",
            url: "https://github.com/jethro-djan/ctx-runtime/releases/download/v0.0.12/ContextRuntime.xcframework.zip",
            checksum: "e5cac6dfc1b573b5d9658dc9277d446da29262b5702548c193024d9b056b8fa0"
        )
    ]
)
