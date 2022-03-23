// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RedQueen",
        products: [
            .library(name: "RedQueen", targets: ["RedQueen"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Luizerz/PassGen.git",
            branch: "master"
        ),
        .package(url: "https://github.com/QiuZhiFei/swift-commands.git", .upToNextMajor(from: "0.6.0")),
    ],
    targets: [
        .target(
            name: "RedQueen",
            dependencies: [
                .product(
                    name: "PassGen",
                    package: "PassGen"
                ),
                .product(
                    name: "Commands",
                    package: "swift-commands")
            ]
        ),
        .executableTarget(
            name: "MyQueen",
            dependencies: ["RedQueen"]
        ),
        .testTarget(
            name: "RedQueenTests",
            dependencies: ["RedQueen"]
        ),
    ]
)
