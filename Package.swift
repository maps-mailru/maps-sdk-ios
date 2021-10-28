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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.23/MapsSDK.xcframework.zip",
            checksum: "e410562f8fbf87e8dc52c516c6887ffe94f7bd0a0114d1563301f27b86dc534c"
        )
    ]
)
