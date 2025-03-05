// swift-tools-version:5.9
// (Xcode15.0+)

import PackageDescription

let package = Package(
    name: "FFCloudSDK",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "FFCloudSDK",
            targets: ["FFCloudSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/shogo4405/Logboard.git", from: "2.4.1"),
        .package(url: "https://github.com/livekit/client-sdk-swift.git", from: "2.2.1"), 
    ],
    targets: [
        .binaryTarget(
            name: "FFCloudSDK",
            url: "https://github.com/jocoos-public/ffc-sdk-client-ios-dist/FFCloudSDK.xcframework",
            checksum: "ddcba5ef4f7e09e8267a01c970ec07a8641ebef8228f3a9c49f61ffcf2aa459f",
        ),
    ]
)

