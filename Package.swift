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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.17/MapsSDK.xcframework.zip",
            checksum: "e8dd88dac3152ecca4217d012e5dcbaca7d10ed35ae6aad6c0d160dcc669e896"
        )
    ]
)
