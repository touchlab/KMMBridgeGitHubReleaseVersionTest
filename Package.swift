// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMBridgeGitHubReleaseVersionTest/co/touchlab/kmmbridge/test/githubrelease/shared-kmmbridge/1.4.12/shared-kmmbridge-1.4.12.zip"
let remoteKotlinChecksum = "b3fa4be5c40b404ada39506593d5eccea3ae2873800fbe77ba8b07b82147ade9"
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