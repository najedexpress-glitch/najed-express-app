plugins {
    kotlin("multiplatform")
    id("com.android.application")
    id("org.jetbrains.compose")
}

kotlin {
    androidTarget()
    
    iosSimulatorArm64 {
        binaries.framework {
            baseName = "ComposeApp"
            isStatic = true
        }
    }

    sourceSets {
        commonMain.dependencies {
            implementation(compose.runtime)
            implementation(compose.foundation)
            implementation(compose.material)
            @OptIn(org.jetbrains.compose.ExperimentalComposeLibrary::class)
            implementation(compose.components.resources) // إضافة دعم الموارد
        }
    }
}

android {
    namespace = "com.najed.express"
    compileSdk = 34
    defaultConfig {
        applicationId = "com.najed.express"
        minSdk = 24
        targetSdk = 34
    }
}
