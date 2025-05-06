// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PublicSymbolsMissingModuleExample-PackageA",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PublicSymbolsMissingModuleExample-PackageA",
            type: .dynamic,
            targets: ["PublicSymbolsMissingModuleExample-PackageA"]),
    ],
    dependencies: [
        .package(url: "https://github.com/aim2120/PublicSymbolsMissingModuleExample-PackageB", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PublicSymbolsMissingModuleExample-PackageA",
            dependencies: [
                .product(name: "PublicSymbolsMissingModuleExample-PackageB", package: "PublicSymbolsMissingModuleExample-PackageB"),
            ]),
        .testTarget(
            name: "PublicSymbolsMissingModuleExample-PackageATests",
            dependencies: ["PublicSymbolsMissingModuleExample-PackageA"]
        ),
    ]
)
