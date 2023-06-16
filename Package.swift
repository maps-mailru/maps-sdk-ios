// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MapsSDK",
    platforms: [.iOS(.v12)],
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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.130/MapsSDK.xcframework.zip",
            checksum: "9a3ca08f0eeca7f163ff28886719d1dce0cdc8306c39424cc8b4b5d328b94f5b"
        )
    ]
)
