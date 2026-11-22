// swift-tools-version:6.2

import PackageDescription

let package = Package(
    name: "OnboardingKit",
    platforms: [
        .iOS(.v17),
        .macOS(.v15),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "OnboardingKit",
            targets: ["OnboardingKit", "OnboardingKitDependencies"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/LicenseKit/LicenseKit.git",
            .upToNextMajor(from: "2.4.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "OnboardingKit",
            url: "https://github.com/Kankoda/OnboardingKit-Binaries/releases/download/0.4.4/OnboardingKit.zip",
            checksum: "9422736893dce44931e842d2c20f67a442597cb07c984ca30bb972e05b794574"
        ),
        .target(
            name: "OnboardingKitDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
