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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.42/MapsSDK.xcframework.zip",
            checksum: "11006dfbb7f92b3cd1c4ee48c8681ebfcbebde79469026959ba7ed3f3c8d8554"
        )
    ]
)
