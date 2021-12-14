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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.33/MapsSDK.xcframework.zip",
            checksum: "9f4864dda7d6bb3e0b1706fb8fd81def2e9c0f39bfa0c5fdc9b6006dfd8d1535"
        )
    ]
)
