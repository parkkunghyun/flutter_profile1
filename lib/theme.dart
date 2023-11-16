
import 'package:flutter/material.dart';

// primary color = 앱의 브랜드 색상
// secondary color(accent color) = 앱의 버튼이나 상호작용하는 이벤트 종류들의 색상
ThemeData themeData() {
  return ThemeData(
    primaryColor: Colors.white, // 웹의 브랜드 색상
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black), // 내부 위젯들의 색상
    ),

  );
}