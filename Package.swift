// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OktaOidc",
    platforms: [
        .macOS(.v10_10), .iOS(.v11)
    ],
    products: [
        .library(name: "OktaOidc", targets: ["OktaOidc"])
    ],
    targets: [
        .binaryTarget(name: "OktaOidc", path: "artifact/OktaOidc.zip")
    ]
)
