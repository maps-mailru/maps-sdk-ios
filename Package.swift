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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.96/MapsSDK.xcframework.zip",
            checksum: "4b371578a0844a3df49d94b7af9334bf58c429b8149a86bfd85254b756ccfbd7"
        )
    ]
)
