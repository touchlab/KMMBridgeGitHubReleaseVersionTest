// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMBridgeGitHubReleaseVersionTest/co/touchlab/kmmbridge/test/githubrelease/shared-kmmbridge/1.4.62/shared-kmmbridge-1.4.62.zip"
let remoteKotlinChecksum = "c2b92a2fff19e066f93ea44967b2530c5e9cd68b38806e7db1eae75195a17536"
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