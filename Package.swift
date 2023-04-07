// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MapsSDK",
    platforms: [.iOS(.v12)],
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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.124/MapsSDK.xcframework.zip",
            checksum: "c3f2ff6946d8ecd48fa09b6089223a7ad898ef3a7c1584ca5e8bf7cebcd09309"
        )
    ]
)
