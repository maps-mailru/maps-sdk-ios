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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.66/MapsSDK.xcframework.zip",
            checksum: "ff9040a03ca6c25e220bbd476184c9e694bd1696ed0f2d278f9cb8e65a24fda5"
        )
    ]
)
