// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoAgoraSupport",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "FireworkVideoAgoraSupport",
            targets: ["FireworkVideoAgoraSupport", "FireworkVideoAgoraSupportDependencies"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git",
            .upToNextMajor(from: "4.1.1")
        ),
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            .upToNextMajor(from: "1.21.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "FireworkVideoAgoraSupport",
            url: "https://github.com/loopsocial/temp_firework_ios_sdk_agora_support/releases/download/v0.1.0/FireworkVideoAgoraSupport-0.1.0.xcframework.zip",
            checksum: "8c398cb236abc2d8f2c355692f0a57e26898fb6336ab9f43508b116652da75d4"
        )
        ,
        .target(
            name: "FireworkVideoAgoraSupportDependencies",
            dependencies: [
                .product(name: "RtcBasic", package: "AgoraRtcEngine_iOS"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ])
    ]
)
