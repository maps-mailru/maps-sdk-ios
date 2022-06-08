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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.67/MapsSDK.xcframework.zip",
            checksum: "39faf482651eb6cc139b2cefd499bff6af0c9f4a8ac9ab92de02d632d9a02507"
        )
    ]
)
