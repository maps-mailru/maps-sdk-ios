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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.84/MapsSDK.xcframework.zip",
            checksum: "d0ccbb3ab9cc1d7721efea16587bc78085fa8e0df8a05ebcf4494b8e8be5bfe1"
        )
    ]
)
