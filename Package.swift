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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.43/MapsSDK.xcframework.zip",
            checksum: "e353d50146f82d93e2fc80501bf71725f63b41cc97500a3439ba16ad6756ebaa"
        )
    ]
)
