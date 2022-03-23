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
    ],
    targets: [
        .executableTarget(
            name: "RedQueen",
            dependencies: [
                .product(
                    name: "PassGen",
                    package: "PassGen"
                ),
            ]
        ),
        .testTarget(
            name: "RedQueenTests",
            dependencies: [
                .byName(name: "RedQueen")
            ]
        ),
    ]
)
