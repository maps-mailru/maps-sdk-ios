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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.126/MapsSDK.xcframework.zip",
            checksum: "0bd9275b4e11a0d95347fd7a98fc148822875f7604e0b8bd43774f65b13b6c20"
        )
    ]
)
