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
        .binaryTarget(name: "OktaOidc", url: "https://github.com/FinalCAD/okta-oidc-ios/releases/download/untagged-a9aa087384d69b46fb1c/OktaOidc-3.9.2.xcframework.zip", checksum: "22d2a048a23a5d804ca55b9545e9ecb72d1c9caf002b1125736abd6bf38eafac")
    ]
)
