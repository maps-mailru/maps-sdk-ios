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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.57/MapsSDK.xcframework.zip",
            checksum: "244a1ef0fc5ac16563d4ba23120dfe15b30bdfd1a8a87922f7a8a20545b0a855"
        )
    ]
)
