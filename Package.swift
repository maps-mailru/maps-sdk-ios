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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.14/MapsSDK.xcframework.zip",
            checksum: "0fca87fd7671dbf7abcd477ea25ed6af0464c6f7cfa78903b2ac50d8039c89a1"
        )
    ]
)
