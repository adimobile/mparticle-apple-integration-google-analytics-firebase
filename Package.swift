
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "mParticle-Apple-Integration-Google-Analytics-Firebase",
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "mParticle-Apple-Integration-Google-Analytics-Firebase",
            type: .dynamic,
            targets: [
                "mParticle-Apple-Integration-Google-Analytics-Firebase"
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/mParticle/mparticle-apple-sdk", .upToNextMajor(from: "8.7.0")),
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "8.10.0")),
    ],
    targets: [
        .target(
            name: "mParticle-Apple-Integration-Google-Analytics-Firebase",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase"),
                .product(name: "mParticle-Apple-SDK", package: "mparticle-apple-sdk")
            ],
            path: "mParticle-Google-Analytics-Firebase",
            publicHeadersPath: "."
        )
    ],
    cxxLanguageStandard: .cxx11
)
