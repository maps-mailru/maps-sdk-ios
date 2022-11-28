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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.105/MapsSDK.xcframework.zip",
            checksum: "11f36e66a139e157a197cf1c81efd824dcb6c6dc245fa947431d716d79a0d135"
        )
    ]
)
