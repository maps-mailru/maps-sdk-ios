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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.4/MapsSDK.xcframework.zip",
            checksum: "b8c753c1d9e2e9622d4c574342a21f91dadea9454503a2151f230c02ad6efabf"
        )
    ]
)
