// swift-tools-version: 6.1
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
