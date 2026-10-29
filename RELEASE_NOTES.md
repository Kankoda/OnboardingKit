# Release notes

[OnboardingKit](https://github.com/Kankoda/OnboardingKit) honors semantic versioning, with the following strategy:

* Deprecations can happen at any time.
* Deprecations are removed in `major` updates.
* Breaking changes should only occur in `major` updates.
* Breaking changes *can* occur in `minor` and `patch` updates, if the alternative is worse.

Beta version tags are removed after the next minor or major version. 

These release notes only cover the current major version.



## 0.2

This renames and polishes some types, and adds a new feature page.

### 🎟️ License

* `OnboardingApp` is a new view that can be used to register a license.

### 💡 Onboardings

* `Onboarding.Sequence` is a new type that presents the next onboarding in a list.
* `Onboarding.tryPresent(after:action:)` now provides the onboarding to the action.

### ➡️ Flows

* `OnboardingPageView` has been renamed to `OnboardingPageFlow`.

### 📺 Screens

* `OnboardingCoverScreen` is a new launch screen with a full-screen background.
* `OnboardingPromoScreen` is a new screen that can promote a feature or an offer.
* `OnboardingWelcomeScreen` can be leading-aligned with `.onboardingWelcomeScreenAlignment(.leading)`.

## ✅ USPs

* `OnboardingUspList` can be created with a custom content builder.



## 0.1

This is the first OnboardingKit beta release, to verify that everything works.

This version adds models, views, documentation, etc.
