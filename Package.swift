
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "mParticle-Apple-Integration-Google-Analytics-Firebase",
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "mParticle-Apple-Integration-Google-Analytics-Firebase",
            targets: [
                "mParticle-Apple-Integration-Google-Analytics-Firebase"
            ]),
    ],
    dependencies: [
        .package(name: "mParticle-Apple-SDK", url: "https://github.com/mParticle/mparticle-apple-sdk", .upToNextMajor(from: "8.7.0")),
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMinor(from: "8.6.0")),
    ],
    targets: [
        .target(
            name: "mParticle-Apple-Integration-Google-Analytics-Firebase",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase"),
                .product(name: "mParticle-Apple-SDK", package: "mParticle-Apple-SDK")
            ],
            path: "mParticle-Google-Analytics-Firebase",
            publicHeadersPath: "."
        )
    ],
    cxxLanguageStandard: .cxx11
)
