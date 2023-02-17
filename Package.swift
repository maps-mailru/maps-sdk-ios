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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.114/MapsSDK.xcframework.zip",
            checksum: "8663a69fe9b32bda4dc4be2e485d3c0472a1d4a1f0b3118687c56fe660ec8084"
        )
    ]
)
