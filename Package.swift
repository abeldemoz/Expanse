// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

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
                "CombineExpansion",
                "ExpanseMacros",
                "StandardLibraryExpansion",
                "UIKitExpansion"
            ]),
    ],
    dependencies: [
        // Depend on the latest Swift 5.9 prerelease of SwiftSyntax
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0-swift-5.9-DEVELOPMENT-SNAPSHOT-2023-04-25-b"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "CombineExpansion"),
        .macro(
            name: "Macros",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
        .target(name: "ExpanseMacros", dependencies: ["Macros"]),
        .target(name: "StandardLibraryExpansion"),
        .target(name: "UIKitExpansion"),

        .testTarget(
            name: "StandardLibraryExpansionTests",
            dependencies: ["StandardLibraryExpansion"]
        ),
        .testTarget(
            name: "ExpanseMacrosTests",
            dependencies: [
                "ExpanseMacros",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
            ]
        )
    ]
)
