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
            name: "FFCloudSDK-xcframework",
            url: "https://github.com/jocoos-public/ffc-sdk-client-ios-dist/releases/download/1.0.7/FFCloudSDK.xcframework.zip",
            checksum: "94475c618b14ee0e4651bf4f4b82ef13b89d3c02c30498a0ac1f6b6c81a273f2"
        ),
        .target(
            name: "FFCloudSDK",
            dependencies: [
                "FFCloudSDK-xcframework",
                .product(name: "LiveKit", package: "client-sdk-swift"),
                .product(name: "Logboard", package: "Logboard"),
            ]
        )
    ]
)

