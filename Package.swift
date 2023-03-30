// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoAgoraSupport",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "FireworkVideoAgoraSupport",
            targets: ["FireworkVideoAgoraSupport"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git",
            .upToNextMajor(from: "4.0.1")
        ),
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            .upToNextMajor(from: "1.21.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "FireworkVideoAgoraSupport",
            url: "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v0.1.0/FireworkVideoAgoraSupport-v0.1.0.xcframework.zip",
            checksum: "ac156e23338d0977f61b9071e441cb9588267ee6d17caecb01a28b22d0753ff6"
        ),
        .target(
            name: "MyTarget",
            dependencies: [
                "FireworkVideoAgoraSupport",
                .product(name: "AgoraRtcEngine_iOS", package: "AgoraRtcEngine_iOS"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        )
    ]
)
