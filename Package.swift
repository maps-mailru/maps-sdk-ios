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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.0.141/MapsSDK.xcframework.zip",
            checksum: "4d77f0508bfa71cc2c09b26e92e918a7cca9d97828f8d274e72e85e58bc0f509"
        )
    ]
)
