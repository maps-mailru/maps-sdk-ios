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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.110/MapsSDK.xcframework.zip",
            checksum: "12bbb3c5b8188450f63ebbec88997b4a0df8d52c8d361445dd13c164025739ec"
        )
    ]
)
