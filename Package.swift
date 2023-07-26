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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.143/MapsSDK.xcframework.zip",
            checksum: "15bde7fa8a4f42d17b3dd8d0a2ef8bacd2f2a6c535e9e7f47cad8b8c6c2623ee"
        )
    ]
)
