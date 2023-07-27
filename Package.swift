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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.145/MapsSDK.xcframework.zip",
            checksum: "90c73b11dfbe9ac2a37a4c046c6a7165b74b3e2171e7cd91988898130aa418ef"
        )
    ]
)
