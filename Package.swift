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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.48/MapsSDK.xcframework.zip",
            checksum: "3e866964c9aeaf9a34fe3450922e33d20d0d8d57192f09bb00bbc5112ee7646b"
        )
    ]
)
