# XMediatorGoogleAds iOS SDK

This Swift Package contains the pre-built `XMediatorGoogleAds` binary (xcframework) for iOS, distributed via Swift Package Manager.

## Requirements

- **iOS**: 13.0 or later
- **Xcode**: 26.0 or later
- **Swift**: 5.0 or later

## Installation

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate `XMediatorGoogleAds` into your Xcode project using Swift Package Manager:

1. Add it to the `dependencies` of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/x3mads/xmediator-googleads-swift-package", .upToNextMajor(from: "13.9.000"))
]
```

2. In Xcode, go to **File → Add Package Dependencies**, paste the package URL, and follow the prompts.

After resolving, add the `XMediatorGoogleAds` library product to your app target.