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
            url: "https://artifactory-external.vkpartner.ru/artifactory/maps-sdk-ios/1.1.34/MapsSDK.xcframework.zip",
            checksum: "e835eec688133ccefcfb9f2dee6e1f8f7846683bcb816dc963eb21e7a2e08145"
        )
    ]
)
