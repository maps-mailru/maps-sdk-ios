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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.76/MapsSDK.xcframework.zip",
            checksum: "8df1380ce06d7401c86ec4e8e4157e851207a881411a2b8aeda08a8ad9f3f5d6"
        )
    ]
)
