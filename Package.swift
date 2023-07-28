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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.146/MapsSDK.xcframework.zip",
            checksum: "a21dfc860f9151341867a5c81f3baf0525b05d2fbd18fb50790d05876a425cf1"
        )
    ]
)
