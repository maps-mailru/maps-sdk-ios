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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.125/MapsSDK.xcframework.zip",
            checksum: "2a85f05e6d5dbb0519e82f6e9a8e999d5b2569b0835133c58c6788bed79c1df5"
        )
    ]
)
