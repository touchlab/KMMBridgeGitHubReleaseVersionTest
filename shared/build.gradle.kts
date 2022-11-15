plugins {
    kotlin("multiplatform") version "1.7.20"
    kotlin("native.cocoapods") version "1.7.20"
    id("com.android.library") version "7.2.2"
    // version 999 ensures always the newest code is tested
    id("co.touchlab.faktory.kmmbridge") version "999"
    `maven-publish`
}

group = "co.touchlab"
version = "1.0"

repositories {
    mavenLocal()
    google()
    mavenCentral()
}

kotlin {
    android()

    iosX64()
    iosArm64()
    iosSimulatorArm64()

    sourceSets {
        val commonMain by getting
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
        val androidTest by getting {
            dependencies {
                implementation("junit:junit:4.13.2")
            }
        }
    }

    cocoapods {
        homepage = "https://www.example.com"
        summary = "Test"
        ios.deploymentTarget = "13"
        framework {
            isStatic = false
        }
    }
}

android {
    compileSdk = 33
    defaultConfig {
        minSdk = 21
    }
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")
}

kmmbridge {
    versionPrefix.set("1.3")
    spm("../")
    cocoapods("git@github.com:Touchlab/Podspecs.git")
    githubReleaseVersions()
    // Doesn't work, probably maven doesn't allow uploading non-maven artifacts
    mavenPublishArtifacts()
}

addGithubPackagesRepository()
