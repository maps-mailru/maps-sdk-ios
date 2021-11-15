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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.25/MapsSDK.xcframework.zip",
            checksum: "d3ee7e7328233af1dcf8e9e3d7632482aa10272faaa8a6c731a3f43121f3cb06"
        )
    ]
)
