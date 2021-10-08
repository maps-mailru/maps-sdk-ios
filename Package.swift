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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.13/MapsSDK.xcframework.zip",
            checksum: "405e8a340f26e855e32546bad40a9fde50d99a515a3746f41efd53edb9dc31a8"
        )
    ]
)
