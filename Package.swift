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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.102/MapsSDK.xcframework.zip",
            checksum: "2c1d6988af43e4a83835590e8eda901414257e262e4587715a3e65e5b1b80fa5"
        )
    ]
)
