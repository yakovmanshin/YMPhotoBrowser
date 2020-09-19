// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SKPhotoBrowser",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "SKPhotoBrowser",
            targets: ["SKPhotoBrowser"]
        ),
    ],
    targets: [
        .target(
            name: "SKPhotoBrowser",
            dependencies: [],
            path: "SKPhotoBrowser"
        ),
        .testTarget(
            name: "SKPhotoBrowserTests",
            dependencies: ["SKPhotoBrowser"],
            path: "SKPhotoBrowserTests"
        ),
    ]
)
