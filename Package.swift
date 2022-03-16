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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.53/MapsSDK.xcframework.zip",
            checksum: "29a7c76641c4f2368bd3687c9f2c40ca9c20b1cce0880711057d7674f11da959"
        )
    ]
)
