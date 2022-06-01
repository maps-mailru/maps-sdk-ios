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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.65/MapsSDK.xcframework.zip",
            checksum: "2048df71cdd3d1c8dc693243fe76d36ff3ce0b9c6808071a7b46f2a86f5f7fd3"
        )
    ]
)
