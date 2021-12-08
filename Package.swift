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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.30/MapsSDK.xcframework.zip",
            checksum: "5ff71e82abd0b1486f774d649caa6e06e57f44ef2134ff3c60e83222ff6671af"
        )
    ]
)
