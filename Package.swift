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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.94/MapsSDK.xcframework.zip",
            checksum: "f61b77d68ddcccf6fbb728a86601ca27f639aed517f822124cc3f18f176f3163"
        )
    ]
)
