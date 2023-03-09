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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.121/MapsSDK.xcframework.zip",
            checksum: "0c6885093e3bd714fd19a38dec48dd9cf40eafa65a7623eaf092a4cc597e9550"
        )
    ]
)
