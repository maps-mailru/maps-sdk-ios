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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.1/MapsSDK.xcframework.zip",
            checksum: "3fd10c6e5b0e706f26b9d010a0d1d6cf3f1d928a8b11709d51b7daa2fb49f438"
        )
    ]
)
