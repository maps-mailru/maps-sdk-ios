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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.104/MapsSDK.xcframework.zip",
            checksum: "e9ef85546f15a27e97364d9f94949e0b430ed9edcbda0aef1bd32ee3c8a9c90a"
        )
    ]
)
