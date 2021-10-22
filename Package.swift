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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.19/MapsSDK.xcframework.zip",
            checksum: "2dd3a6a8797c2922c7b311cdf789160e6bab022c61d274cbbfe6a466086d44d0"
        )
    ]
)
