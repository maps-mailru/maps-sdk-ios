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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.47/MapsSDK.xcframework.zip",
            checksum: "41a0096f2454a0222c15e6574d25299724a9c7e0c2dc662627b77dde29eaa677"
        )
    ]
)
