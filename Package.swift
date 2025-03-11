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
            targets: ["FFCloudSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/livekit/client-sdk-swift.git", from: "2.3.0"),
    ],
    targets: [
        .binaryTarget(
            name: "FFCloudSDK",
            path: "./FFCloudSDK.xcframework"
        ),
        .target(
            name: "FFCloudSDKWrapper",
            dependencies: [
                "FFCloudSDK",
                .product(name: "LiveKit", package: "client-sdk-swift"),
            ]
        )
    ]
)

