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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.0/MapsSDK.xcframework.zip",
            checksum: "9f0db3b001abc8879549eef11936161ec32b4d385f0589ba720f0f98b47afb3f"
        )
    ]
)
