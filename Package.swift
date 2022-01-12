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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.36/MapsSDK.xcframework.zip",
            checksum: "ac3f4aab601fded29958401de7abc65a4749ca0935bba8be1fc3626f95d6fe5a"
        )
    ]
)
