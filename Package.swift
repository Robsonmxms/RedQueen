// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RedQueen",
    platforms: [.macOS(.v10_12)],
    products: [
        .library(name: "RedQueen", targets: ["RedQueen"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Luizerz/PassGen.git",
            from: "1.0.2"
        ),
        .package(
            url: "https://github.com/otavioalbucosta/FolderOrganizer.git",
            branch: "main"
        ),
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
                    name: "FolderOrganizerLib",
                    package: "FolderOrganizer"
                ),
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
