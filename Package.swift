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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.90/MapsSDK.xcframework.zip",
            checksum: "c18395d10d33c144f47aa88f68564dd5570cf078615dcd6df7b91b44b6f8d2ca"
        )
    ]
)
