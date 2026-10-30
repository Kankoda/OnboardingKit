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
            exact: "2.3.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "OnboardingKit",
            url: "https://github.com/Kankoda/OnboardingKit-Binaries/releases/download/0.3.0/OnboardingKit.zip",
            checksum: "ee684f9c1a4c848f60842a02a9bca06e16eefa82e706ecf6b23713ffafce3ad5"
        ),
        .target(
            name: "OnboardingKitDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
