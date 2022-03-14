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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.51/MapsSDK.xcframework.zip",
            checksum: "ce909c1acd95873f9b73ef9b5c0c13406415f31309cfec04f20729a7a5e1e0d2"
        )
    ]
)
