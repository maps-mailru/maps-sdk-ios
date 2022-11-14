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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.95/MapsSDK.xcframework.zip",
            checksum: "dea22ffafe0567b713a826005db334706d9b7d7c99e9bfa76748e824cd3f0853"
        )
    ]
)
