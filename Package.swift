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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.128/MapsSDK.xcframework.zip",
            checksum: "0ded56d336fa6bd8a442672ecea16507e0e8c800d6e6a81eeb38579aca8115f4"
        )
    ]
)
