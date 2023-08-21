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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.149/MapsSDK.xcframework.zip",
            checksum: "4c29ccf67ed41d09d2071c2c96d28fad2af7c1457507aa3886baa50d69ae7924"
        )
    ]
)
