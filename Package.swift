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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.107/MapsSDK.xcframework.zip",
            checksum: "0e04c08a7a5b5ea9ea6929548070e921fcb5ca2fb006dd7b5bf93b6914190bf8"
        )
    ]
)
