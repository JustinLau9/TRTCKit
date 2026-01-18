// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TRTCKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TRTCKit",
            targets: ["TXLiteAVSDK_TRTC", "TXSoundTouch", "TXFFmpeg"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "TXLiteAVSDK_TRTC",
            url: "https://resources.sejahteratech.com/Robot/TXLiteAVSDK_TRTC.xcframework.zip",
            checksum: "766ec958d20564fe953baf1cf8a0e5c697c67396df306e35225a0367a7ad1688"
           ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/customer/HelperTest/SPM/TXSoundTouch.xcframework.zip",
            checksum: "4870aebc2758afd0f0756db0f4baa478338c45dde6fa45cf2fd7a9b5c5b76ff5"
            ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/customer/HelperTest/SPM/TXFFmpeg.xcframework.zip",
            checksum: "a9cebf1f50587f9dca69d5ba61c9a2c20a6a80090369056365d2bead660a6e4e"
            ),
        .target(
            name: "TRTCKit",
            dependencies: [
                .target(name: "TXLiteAVSDK_TRTC")
            ],
            sources: ["TRTCKit.swift"],
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreServices"),
                .linkedFramework("Accelerate"),
                .linkedFramework("ReplayKit"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
