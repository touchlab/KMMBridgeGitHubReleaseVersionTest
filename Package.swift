// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMBridgeGitHubReleaseVersionTest/co/touchlab/kmmbridge/test/githubrelease/shared-kmmbridge/1.4.86/shared-kmmbridge-1.4.86.zip"
let remoteKotlinChecksum = "40b817308825e1889682abfaf8aa1ce109d2d6980abda22a115b4ae88906a1db"
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