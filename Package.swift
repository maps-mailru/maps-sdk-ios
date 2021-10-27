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
            url: "https://mmr.jfrog.io/artifactory/maps-sdk-ios/1.0.22/MapsSDK.xcframework.zip",
            checksum: "4388afee64b6e2d0981ec128be1abedadfcc74ce06ff16d5e1422de517493dd7"
        )
    ]
)
