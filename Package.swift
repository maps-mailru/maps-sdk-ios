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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.11/MapsSDK.xcframework.zip",
            checksum: "82915d7fee0660fa85d09fff449d4781a27897d850cb7661d24a55acc8f68d1e"
        )
    ]
)
