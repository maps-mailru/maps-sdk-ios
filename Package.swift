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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.55/MapsSDK.xcframework.zip",
            checksum: "68a8c0f7098a1583ee051b14e4f5305f8a8835eb91671daba6efc0c06574ecd1"
        )
    ]
)
