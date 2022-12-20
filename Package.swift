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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.106/MapsSDK.xcframework.zip",
            checksum: "981ea430ad9d3d9a2975fff6d120db28602f9d3cd68068d6837276cd04b8ab66"
        )
    ]
)
