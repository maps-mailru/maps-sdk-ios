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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.108/MapsSDK.xcframework.zip",
            checksum: "e6f6848bfb6c7dbd89008ef9db81693bfcb163d01c0bf596f0b8bd0b252e2126"
        )
    ]
)
