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
