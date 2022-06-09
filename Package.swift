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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.69/MapsSDK.xcframework.zip",
            checksum: "a5faec4fe92eb2d98c6462149382a97c645a2f1e59b2fd6e58ac2673bb84c69a"
        )
    ]
)
