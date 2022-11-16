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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.97/MapsSDK.xcframework.zip",
            checksum: "b98bee04ea99c2e017b62b1c4d940a4272ca0f06116a67b3241422be73b22057"
        )
    ]
)
