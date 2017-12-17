// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "StompClient",
    products: [
        .library(name: "StompClient", targets: ["StompClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "StompClient",
            dependencies: ["Starscream"]),
        .testTarget(
            name: "StompClientTests",
            dependencies: ["StompClient"],
            path: "Tests"),
    ]
)


