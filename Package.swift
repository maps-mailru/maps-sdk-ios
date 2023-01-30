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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.109/MapsSDK.xcframework.zip",
            checksum: "3f5b3eed688447b00165a16111528d9b0d7e3afd88f804c73c60cdb3b9006613"
        )
    ]
)
