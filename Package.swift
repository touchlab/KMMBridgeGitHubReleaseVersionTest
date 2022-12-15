// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMBridgeGitHubReleaseVersionTest/co/touchlab/kmmbridge/test/githubrelease/shared-kmmbridge/1.4.52/shared-kmmbridge-1.4.52.zip"
let remoteKotlinChecksum = "ac6db729412367eacd2862f38d32587c54e60d759919328f2fa94a15622660f3"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)