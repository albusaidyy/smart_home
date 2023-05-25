import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'views/bottom_navigation_bar/bottom_navigation_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smart Home",
      theme: ThemeData(
        fontFamily: 'Manrope',
        textTheme: const TextTheme(
          labelLarge: TextStyle(
              fontSize: 17,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              height: 1.2,
              color: Color(0xFF211D1D)),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0x66F8F8F8),
            fontSize: 12,
          ),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0x66FFFFFF),
              fontSize: 17,
              height: 1.2),
          titleMedium: TextStyle(
              fontSize: 17,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              height: 1.2,
              color: Color(0xFFF8F8F8)),
          titleLarge: TextStyle(
            fontSize: 32,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
            color: Color(0xFFF8F8F8),
          ),
          titleSmall: TextStyle(
            fontSize: 12,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
            color: Color(0x66F8F8F8),
          ),
        ),
      ),
      home: const BottomNavigatonBarView(),
    );
  }
}
