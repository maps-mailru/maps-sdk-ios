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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.142/MapsSDK.xcframework.zip",
            checksum: "01a3a2156fd072f0498e4077d8490b18da8087e99869266bdc5a82b1bbcc5f9f"
        )
    ]
)
