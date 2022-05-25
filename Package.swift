
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "mParticle_Google_Analytics_Firebase",
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "mParticle_Google_Analytics_Firebase",
            targets: [
                "mParticle_Google_Analytics_Firebase"
            ]),
    ],
    dependencies: [
        .package(
            name: "mParticle-Apple-SDK",
            url: "https://github.com/mParticle/mparticle-apple-sdk", .upToNextMajor(from: "8.2.0")),
        .package(
            name: "Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMinor(from: "8.6.0")),
    ],
    targets: [
        .target(
            name: "mParticle_Google_Analytics_Firebase",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase"),
                .product(name: "mParticle-Apple-SDK", package: "mParticle-Apple-SDK")
            ],
            path: "mParticle-Google-Analytics-Firebase",
            publicHeadersPath: "include"
        )
    ]
)
