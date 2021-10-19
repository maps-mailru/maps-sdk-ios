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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.16/MapsSDK.xcframework.zip",
            checksum: "01f6e98ec98cba228e1a78db91fcb65325ce4cb873c34a9a2d524a0efd6f25bc"
        )
    ]
)
