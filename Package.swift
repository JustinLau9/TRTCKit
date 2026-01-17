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
            targets: ["TRTCKit"]
        )
    ],
    targets: [
        .target(
            name: "TRTCKit",
            dependencies: [],
            path: "Sources/TRTCKit",
            resources: [],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("UIKit")
            ]
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_TRTC",
            path: "Frameworks/TXLiteAVSDK_TRTC.xcframework"
        )
    ]
)
