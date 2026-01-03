plugins {
    kotlin("multiplatform")
    id("com.android.application")
    id("org.jetbrains.compose")
}

kotlin {
    androidTarget()
    
    // التركيز فقط على معمارية السيرفر لتسريع البناء
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
