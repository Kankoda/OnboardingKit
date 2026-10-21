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
            url: "https://github.com/Kankoda/OnboardingKit-Binaries/releases/download/1.0.0/OnboardingKit.zip",
            checksum: "495c759a2066b545eb76858ec3b6fcb9e2714304ee3d63443be1ec9874fd7f0e"
        ),
        .target(
            name: "OnboardingKitDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
