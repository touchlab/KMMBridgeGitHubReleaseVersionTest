// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMBridgeGitHubReleaseVersionTest/co/touchlab/kmmbridge/test/githubrelease/shared-kmmbridge/1.4.44/shared-kmmbridge-1.4.44.zip"
let remoteKotlinChecksum = "fbd97af1e20d24185778a3a564d2f0432f0e203e376b44994eb18e3914723b50"
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