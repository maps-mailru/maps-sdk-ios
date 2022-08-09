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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.75/MapsSDK.xcframework.zip",
            checksum: "79aee5dbf4177ad5f6610ee15a614dfdbad487f921272afdc26dac303b7f179c"
        )
    ]
)
