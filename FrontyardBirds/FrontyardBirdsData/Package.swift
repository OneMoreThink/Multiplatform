// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrontyardBirdsData",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .watchOS(.v10),
        .tvOS(.v17)
    ],
    products: [
        .library(
            name: "FrontyardBirdsData",
            type: .dynamic,
            targets: ["FrontyardBirdsData"]),
    ],
    targets: [
        .target(
            name: "FrontyardBirdsData",
            path: "."
        )
    ]
)
