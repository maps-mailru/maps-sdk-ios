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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.54/MapsSDK.xcframework.zip",
            checksum: "7cdc285fc995f8c9c6ef70b096a67158b22c9c6c5233dba17b8ec2f605a32823"
        )
    ]
)
