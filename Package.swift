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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.60/MapsSDK.xcframework.zip",
            checksum: "4190049d3a8efa708a2257e679927fc2fc34f61beb7218d96a9d66fcceee6d7b"
        )
    ]
)
