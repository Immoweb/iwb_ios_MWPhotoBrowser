// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iwb_ios_MWPhotoBrowser",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MWPhotoBrowser",
            targets: ["MWPhotoBrowser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://github.com/matej/MBProgressHUD.git", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "MWPhotoBrowser",
            dependencies: [
                "SDWebImage",
                "MBProgressHUD"
            ],
            resources: [
                .process("./Resources/")
            ]
        )
    ]
)
