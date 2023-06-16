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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.133/MapsSDK.xcframework.zip",
            checksum: "ea2a94cbc8f7dd4712baf0420b480060f8adffe6f0d5b27b1c29f4c5be12b3fc"
        )
    ]
)
