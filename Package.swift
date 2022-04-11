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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.58/MapsSDK.xcframework.zip",
            checksum: "258a26248c5a506c507574d506a6df9e86fec6d2f4574aa0059c30ffe0ad4f21"
        )
    ]
)
