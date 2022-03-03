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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.44/MapsSDK.xcframework.zip",
            checksum: "a42f01a332c335eb34f3c0646b770032397e55d8f3751b44f7070f96de56ab8e"
        )
    ]
)
