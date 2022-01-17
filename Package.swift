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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.37/MapsSDK.xcframework.zip",
            checksum: "f501b6ed652573405b8b8935f8a4463e5a132807dc496fbfecb2df65d67ec41a"
        )
    ]
)
