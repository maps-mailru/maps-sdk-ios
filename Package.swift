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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.1.39/MapsSDK.xcframework.zip",
            checksum: "3ce5f3296e712a53be059d9b4df37926828f89b5c7a249a8c383d8e054bc3f95"
        )
    ]
)
