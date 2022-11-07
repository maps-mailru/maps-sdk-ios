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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.92/MapsSDK.xcframework.zip",
            checksum: "a7155b80032cd68db1c9a26cf52997b245e6183b1e31b270a6357ce62ae5b8b9"
        )
    ]
)
