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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.132/MapsSDK.xcframework.zip",
            checksum: "12546beb22466ad6ee609718a6d03d894b6d06ddfb038c58d8516b8dc64bfe18"
        )
    ]
)
