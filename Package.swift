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
        .package(url: ""https://github.com/shogo4405/Logboard.git, from: "2.4.1")
    ],
    targets: [
        .binaryTarget(
            name: "FFCloudSDK",
            path: "FFCloudSDK.xcframework"
        ),
    ]
)

