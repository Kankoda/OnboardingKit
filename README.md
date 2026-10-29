<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/Kankoda/OnboardingKit?color=forestgreen&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-6.0-orange.svg" alt="Swift 6.0" />
    <a href="https://keyboardkit.github.io/OnboardingKit"><img src="https://img.shields.io/badge/documentation-read-blue.svg" alt="Documentation" /></a>
    <img src="https://img.shields.io/badge/license-commercial-yellow.svg" alt="Commercially Licensed" />
</p>


# OnboardingKit

OnboardingKit is a Swift & SwiftUI SDK that lets you create flexible onboarding experiences on all Apple platforms. 

OnboardingKit has core models & views for modeling a perfect onboarding experience, as well as flows & screens for effortless presentations.

<img src="Resources/Header.jpg" alt="Header image" />



## Installation

OnboardingKit can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/OnboardingKit.git
```

This package requires a license to be used. You can sign up for a free or paid license from the [website][Website], then register it as described in the [getting-started guide][Getting-Started].



## Getting Started

You must first use your license to unlock the SDK:

```swift
try await OnboardingKitLicense.register(.gumroad(licenseKey: "your-license-key"))
```

You can also use the `OnboardingApp` view to automatically register your license, by placing it in your app root:

```swift
@main
struct MyApp: App {

    var body: some Scene {
        WindowGroup {
            OnboardingApp(.gumroad(licenseKey: "...")) {
                ContentView()   // <- You app's main content view
            }
        }
    }
}
```

Once your license is registered, you can create start creating and presenting onboarding experiences. See the [getting-started guide][Getting-Started] for more information.



## Flows

OnboardingKit has two onboarding flow containers - `OnboardingPageFlow` and a `OnboardingSlideshow` - that can be used to present a collection of pages.



## Screens

OnboardingKit also has various screen templates, like a `OnboardingWelcomeScreen`, `OnboardingWhatsNewScreen`, `OnboardingPromoScreen`, and `OnboardingCoverScreen`.

<img src="Resources/Screenshots/OnboardingWelcomeScreen.png" alt="Welcome Screen" width="200" /> <img src="Resources/Screenshots/OnboardingWhatsNewScreen.png" alt="What's New Screen" width="200" /> <img src="Resources/Screenshots/OnboardingPromoScreen.png" alt="Promo Screen" width="200" /> <img src="Resources/Screenshots/OnboardingCoverScreen-NewPlaces.png" alt="Cover Screen" width="200" />

These screens can be styled and customized to great extent.



## Documentation

The [online documentation][Documentation] has a thorough getting-started guide, detailed articles, code samples, etc.



## Contact

This package is developed by [Kankoda][Website] in Stockholm, Sweden.

Feel free to [reach out][email] if you have any questions or feedback, or if you need support.



## Commercial License

This package requires a license to be used. You can sign up on the [product website][Website] or the [online license store][LicenseStore].



[Email]: mailto:info@kankoda.com
[Website]: https://kankoda.com
[Product]: https://kankoda.com/onboardingkit
[Bluesky]: https://bsky.app/profile/kankoda.bsky.social
[Mastodon]: https://techhub.social/@kankoda
[Sponsors]: https://github.com/sponsors/danielsaidi

[Documentation]: https://kankoda.github.io/OnboardingKit/
[License]: https://github.com/Kankoda/OnboardingKit/blob/master/LICENSE
[LicenseStore]: https://kankoda.gumroad.com/onboardingkit

[Getting-Started]: https://kankoda.github.io/OnboardingKit/documentation/onboardingkit/getting-started-article
