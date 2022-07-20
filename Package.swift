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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.73/MapsSDK.xcframework.zip",
            checksum: "cc9c8a7db1f8bd012d72ad7e42de671ed0d7bfede859520807fa60fe128f4214"
        )
    ]
)
