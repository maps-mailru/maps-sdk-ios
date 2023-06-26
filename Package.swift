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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.139/MapsSDK.xcframework.zip",
            checksum: "9c0406b41d1b94e29a10162ccdcc2b5cad4463f6bc26c92a4be35008d31060f4"
        )
    ]
)
