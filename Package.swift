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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.20/MapsSDK.xcframework.zip",
            checksum: "933315e753f1775ef1c39f08ce868a93dcd238b46f9c1a3b2be6063dc488a19d"
        )
    ]
)
