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
            url: "https://github.com/Kankoda/OnboardingKit-Binaries/releases/download/0.2.0/OnboardingKit.zip",
            checksum: "9bc525ccf6064df5ae10e67fdee5bc2bc1fb69537e9f7b6c8e31fe9237a7c65a"
        ),
        .target(
            name: "OnboardingKitDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
