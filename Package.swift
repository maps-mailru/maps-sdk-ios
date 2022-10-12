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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.79/MapsSDK.xcframework.zip",
            checksum: "e739c7c0250a20b7f445ed375d055699ceb9abfee211c1ee9a2359a9a4e62ce0"
        )
    ]
)
