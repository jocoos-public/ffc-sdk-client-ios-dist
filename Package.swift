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
    ],
    targets: [
        .binaryTarget(
            name: "FFCloudSDKFramework",
            path: "./FFCloudSDK.xcframework"
        ),
        .target(
            name: "FFCloudSDK",
            dependencies: [
                "FFCloudSDKFramework",
            ]
        )
    ]
)

