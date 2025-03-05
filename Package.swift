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
            url: "https://github.com/jocoos-public/ffc-sdk-client-ios-dist/releases/download/1.0.8/FFCloudSDK.xcframework.zip",
            checksum: "2f6d0c0568411c6a260f5d56e08d6f3274ab2cbfd67dff98b45e90c9696fc281"
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

