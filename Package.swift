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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.98/MapsSDK.xcframework.zip",
            checksum: "d4200668cd9f55a6df4749aa45e311d44a30d67b4efe188d44b6bd1199d7949e"
        )
    ]
)
