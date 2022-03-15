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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.52/MapsSDK.xcframework.zip",
            checksum: "7dfb37c014a1f67eb4d2dd78e588a92c18cac0d9499af2113d7c1e37c9b4d0e4"
        )
    ]
)
