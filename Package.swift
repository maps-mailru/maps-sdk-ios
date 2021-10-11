// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MapsSDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "MapsSDK",
            targets: ["MapsSDK"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MapsSDK",
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.15/MapsSDK.xcframework.zip",
            checksum: "9c198df66a6c82b8d154e1630c904ea0098fcac70bd70114ec12e5d296b7ed71"
        )
    ]
)
