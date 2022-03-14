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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.50/MapsSDK.xcframework.zip",
            checksum: "3a9d6d644afaca1c7ba7e4a56873e8c821ad82027c41eee4c0a16a7db43508fa"
        )
    ]
)
