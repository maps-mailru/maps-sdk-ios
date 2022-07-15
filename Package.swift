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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.72/MapsSDK.xcframework.zip",
            checksum: "ab292d2579a3d2edeab545e749341475b8e19c48a3ba2471e74463a9f36ddd8b"
        )
    ]
)
