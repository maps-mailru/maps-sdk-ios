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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.136/MapsSDK.xcframework.zip",
            checksum: "62c11a01f2c99c7c77b6cd484a7ad53d9c75e9d43e72a562265d9a7a8bff8a99"
        )
    ]
)
