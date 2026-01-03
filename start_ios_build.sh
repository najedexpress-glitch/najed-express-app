#!/bin/bash

echo "🚀 بدأت عملية تجهيز كود ناجد إكسبريس..."

# 1. إنشاء ملف الواجهة الأساسي في القسم المشترك (لتعمل على الأندرويد والآيفون)
mkdir -p composeApp/src/commonMain/kotlin/com/najed/express
cat << 'KTS_EOF' > composeApp/src/commonMain/kotlin/com/najed/express/App.kt
package com.najed.express

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier

@Composable
fun App() {
    MaterialTheme {
        Column(modifier = Modifier.fillMaxSize()) {
            Text("مرحباً بك في ناجد إكسبريس")
            Text("هذه النسخة تعمل الآن على الآيفون والأندرويد")
        }
    }
}
KTS_EOF

# 2. إضافة التعديلات للرفع
git add .
git commit -m "إضافة كود واجهة التطبيق المشتركة وبدء بناء الآيفون"

# 3. الرفع للسحاب لتشغيل الـ Action
echo "📤 جاري رفع الكود لتشغيل المصنع السحابي..."
git push origin main

echo "✅ تم الرفع! اذهب الآن لتبويب Actions في GitHub لمشاهدة بناء نسخة الآيفون."
