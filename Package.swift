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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.2/MapsSDK.xcframework.zip",
            checksum: "7631dddd7f4aeb962b8e9abba3910cd8cd1063075ced995dc9ab3868b8aaf119"
        )
    ]
)
