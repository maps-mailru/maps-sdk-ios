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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.18/MapsSDK.xcframework.zip",
            checksum: "f5f4d9aae86d174279b1d20f0414ffc066e458453b115d8168d25d90d1b1f67d"
        )
    ]
)
