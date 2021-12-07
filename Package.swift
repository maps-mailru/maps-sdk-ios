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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.29/MapsSDK.xcframework.zip",
            checksum: "e26dbebf1465fb872b33e55f3d2a7ace73bdb03f5553e77103db55a700159fd4"
        )
    ]
)
