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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.38/MapsSDK.xcframework.zip",
            checksum: "b32f4b410126489f23a738cfcb4ad98ddf0c1f6ee6de0ca60cc32d526f765a4c"
        )
    ]
)
