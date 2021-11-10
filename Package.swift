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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.24/MapsSDK.xcframework.zip",
            checksum: "4ea71de1b1082063263d01c0087d16052e0ad3631dcb938e01772b052c4c7dae"
        )
    ]
)
