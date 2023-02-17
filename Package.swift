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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.115/MapsSDK.xcframework.zip",
            checksum: "5ca5e5f696316d9e5c363eaf268f8f65cc8a2aa26780e002900260fe4afab10a"
        )
    ]
)
