#!/bin/bash

echo "🛠️ جاري تصحيح هيكل تطبيق ناجد إكسبريس..."

# 1. إنشاء ملف settings.gradle.kts المفقود
cat << 'KTS_EOF' > settings.gradle.kts
rootProject.name = "najed-express"
include(":composeApp")
KTS_EOF

# 2. إنشاء ملف build.gradle.kts الأساسي للمشروع
cat << 'KTS_EOF' > build.gradle.kts
plugins {
    kotlin("multiplatform") version "1.9.20" apply false
    id("com.android.application") version "8.1.0" apply false
    id("org.jetbrains.compose") version "1.5.10" apply false
}
KTS_EOF

# 3. إضافة الملفات والرفع مجدداً لتشغيل البناء
git add .
git commit -m "إضافة ملفات Gradle الهيكلية لتصحيح بناء iOS"
git push origin main

echo "✅ تم إرسال التحديثات! اذهب لتبويب 'الإجراءات' (Actions) الآن."
