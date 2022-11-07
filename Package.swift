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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.91/MapsSDK.xcframework.zip",
            checksum: "8dadc11acd8b33faa05a42f6359d9827bd35deb80343e6390b873ca27df44c6c"
        )
    ]
)
