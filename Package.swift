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
            url: "https://github.com/Kankoda/OnboardingKit-Binaries/releases/download/0.4.0/OnboardingKit.zip",
            checksum: "6af32a7b5998f695bd02641e0ae2bb9797ce70f2c6ac817be7594d4addc34416"
        ),
        .target(
            name: "OnboardingKitDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
