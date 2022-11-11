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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.93/MapsSDK.xcframework.zip",
            checksum: "53eb3108059511f88ab850ea167ffb5d66f521dda5a6f9ee8c5d98c025ffab4b"
        )
    ]
)
