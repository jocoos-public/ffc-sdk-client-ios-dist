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
    ],
    targets: [
        .target(
            name: "FFCloudSDK",
            dependencies: ["FFCloudSDKWrapper"]
        ),
        .binaryTarget(
            name: "FFCloudSDKFramework",
            url: "https://github.com/jocoos-public/ffc-sdk-client-ios-dist/releases/download/1.0.21/FFCloudSDK.xcframework.zip",
            checksum: "27e637f6aad452153b7d4cc74b3e3aa7bc0d1ff6f7a05a20db63be1c9ecddbbc"
        ),
        .target(
            name: "FFCloudSDKWrapper",
            dependencies: [
                "FFCloudSDKFramework",
                .product(name: "Logboard", package: "Logboard"),
            ]
        )
    ]
)

