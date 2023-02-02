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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.111/MapsSDK.xcframework.zip",
            checksum: "bdd7ee017e3cc19f921b5d7cfeda16fde4ff8687a78518a1e06171cc106ccc79"
        )
    ]
)
