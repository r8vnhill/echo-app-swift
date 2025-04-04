// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "echo-app-swift",
    products: [
        .executable(name: "App", targets: ["App"]),
        .library(name: "Lib", targets: ["Lib"])
    ],
    targets: [
        .target(name: "Lib"),
        .executableTarget(
            name: "App",
            dependencies: ["Lib"]
        ),
        .testTarget(
            name: "LibTests",
            dependencies: ["Lib"]
        )
    ]
)
