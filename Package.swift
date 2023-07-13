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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.116/MapsSDK.xcframework.zip",
            checksum: "2af4bdece02699c3d482bb57b425a1826e75c1d3da5a9cae1a7ce468fb4fc8fb"
        )
    ]
)
