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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.82/MapsSDK.xcframework.zip",
            checksum: "912c7e5088935c85c84a706d572f60e5db46bf90c167f0cbc0930f20051873d6"
        )
    ]
)
