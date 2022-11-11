// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KMMBridgeGitHubReleaseVersionTest/releases/assets/84251474.zip"
let remoteKotlinChecksum = "828d1979b15091059c89bdccba9b4a908e3ee7a0527a20f4560a3df201250b45"
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