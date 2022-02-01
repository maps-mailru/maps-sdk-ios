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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.41/MapsSDK.xcframework.zip",
            checksum: "dfec2f7f335ec4ee097216a31755748c1b962249db5a3ac2e900ed24722f1f17"
        )
    ]
)
