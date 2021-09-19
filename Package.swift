// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SKPhotoBrowser",
    platforms: [
        .iOS(.v11)
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
