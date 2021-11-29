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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.28/MapsSDK.xcframework.zip",
            checksum: "d2d9ff26d90eed12813ec7ef67466ea5c52f6813402afe77a1ac740ff53f04a3"
        )
    ]
)
