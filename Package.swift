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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.1.44/MapsSDK.xcframework.zip",
            checksum: "216be6bb2d97db18570f022d3ff50ae244b97c12ff2371110d1f1578e0b35492"
        )
    ]
)
