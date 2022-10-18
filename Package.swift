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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.81/MapsSDK.xcframework.zip",
            checksum: "6aeb84662026f7fbdd38531d62b4dd32fef1b9ad031d470b10b80896e65cf7ca"
        )
    ]
)
