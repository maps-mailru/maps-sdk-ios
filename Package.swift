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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.78/MapsSDK.xcframework.zip",
            checksum: "2fbc83a72ca5dac647be04c349263f4d00fd2f15c127396af0eb55379dfe9132"
        )
    ]
)
