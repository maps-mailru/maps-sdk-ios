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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.122/MapsSDK.xcframework.zip",
            checksum: "f3adccd227d00a1be8c4dd43af86f76f8b2b8808fc6bf8f429b377a4bbc11dbe"
        )
    ]
)
