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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.39/MapsSDK.xcframework.zip",
            checksum: "ae78a8f479e0a8d8ccc30233992b1a4a7a8d7bec13d2a4c5651296cbed56a7ed"
        )
    ]
)
