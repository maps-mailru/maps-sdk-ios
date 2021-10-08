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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.9/MapsSDK.xcframework.zip",
            checksum: "7e13ca606857e1d3b371dfb873d675a7b834a8a49de94e32ce86fd5933db894b"
        )
    ]
)
