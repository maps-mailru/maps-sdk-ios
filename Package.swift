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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.59/MapsSDK.xcframework.zip",
            checksum: "f90c6ce26c27b9f771ba41a88669cc7237c0306ab40d651dc07a6f6f9a32522f"
        )
    ]
)
