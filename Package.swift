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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.64/MapsSDK.xcframework.zip",
            checksum: "6f34c403005aaf2ac8603d133f2c169523f86fee378ebb74b2664dbacbb4a9fa"
        )
    ]
)
