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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.7/MapsSDK.xcframework.zip",
            checksum: "044d632e6a5d9d6c2701f8f22ad201e4b1cff7824add989c5bb92bf6f006510a"
        )
    ]
)
