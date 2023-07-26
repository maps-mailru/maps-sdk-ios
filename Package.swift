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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.144/MapsSDK.xcframework.zip",
            checksum: "0b57fd8cce1a82ca2e2cb391db8673d0ccc0dd602b074e8da35aa57dc402d0b2"
        )
    ]
)
