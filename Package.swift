// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorGoogleAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorGoogleAds", targets: ["XMediatorGoogleAdsTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.10.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.164.0")),
    ],
    targets: [
        .target(
            name: "XMediatorGoogleAdsTarget",
            dependencies: [
                .target(name: "XMediatorGoogleAds"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "XMediatorGoogleAdsTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorGoogleAds",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorGoogleAds/XMediatorGoogleAds-13.10.0.0.zip",
            checksum: "8597e4a6bae4020a2a25c290a0e0f5d3bda89114f0b958f9485bcdee7066cd69"
        ),
    ]
)
