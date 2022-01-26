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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.40/MapsSDK.xcframework.zip",
            checksum: "50361efb1cdfb930a52ce438c43aeea8a3e84a26fa333dcb3677f0e8aaaaf346"
        )
    ]
)
