// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Expanse",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Expanse",
            targets: [
                "StandardLibraryExpansion",
                "UIKitExpansion",
                "SwiftUIExpansion"
            ]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "StandardLibraryExpansion"),
        .target(name: "UIKitExpansion"),
        .target(name: "SwiftUIExpansion"),

        .testTarget(
            name: "StandardLibraryExpansionTests",
            dependencies: ["StandardLibraryExpansion"]
        )
    ]
)
