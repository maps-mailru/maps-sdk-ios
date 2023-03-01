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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.118/MapsSDK.xcframework.zip",
            checksum: "62807f17dfb7f5e752925e06e90fcc6aeed4a139013fe2847a6e0cc857be6c35"
        )
    ]
)
