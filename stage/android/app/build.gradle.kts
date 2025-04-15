plugins {
    id("com.android.application")
    kotlin("android")
}

android {
    namespace = "com.example.yourapp" // change si nécessaire
    compileSdk = 33

    defaultConfig {
        applicationId = "com.example.yourapp" // change si nécessaire
        minSdk = 21
        targetSdk = 33
        versionCode = 1
        versionName = "1.0"
    }

    ndkVersion = "25.2.9519653"
}

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.8.0") // ou autre selon ton projet
}
