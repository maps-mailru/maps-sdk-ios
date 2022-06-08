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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.68/MapsSDK.xcframework.zip",
            checksum: "10c02c1a4a427ff5b95c9767879e57dbdf9073b16efc8bd5cfcb2814daa0051f"
        )
    ]
)
