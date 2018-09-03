// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Capriccio",
    products: [
        .library(
            name: "CapriccioLib",
            targets: ["CapriccioLib"]),
        .executable(
            name: "Capriccio",
            targets: ["Capriccio"])
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "7.2.0"),
        .package(url: "https://github.com/f-meloni/TestSpy", .branch("master"))
    ],
    targets: [
        .target(
            name: "CapriccioLib",
            dependencies: []),
        .target(
            name: "Capriccio",
            dependencies: ["CapriccioLib"]),
        .testTarget(
            name: "CapriccioLibTests",
            dependencies: ["CapriccioLib", "Nimble", "TestSpy"])
    ]
)