import 'package:flutter/material.dart';

import 'views/bottom_navigation_bar/bottom_navigation_bar_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smart Home",
      theme: ThemeData(
        fontFamily: 'Manrope',
        textTheme: TextTheme(
          labelLarge: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              height: 1.2,
              color: Color(0xFF211D1D)),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            color: const Color(0xFFF8F8F8).withOpacity(0.6),
            fontSize: 12,
          ),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w500,
              color: const Color(0xFFFFFFFF).withOpacity(0.6),
              fontSize: 17,
              height: 1.2),
          titleMedium: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              height: 1.2,
              color: Color(0xFFF8F8F8)),
          titleLarge: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: Color(0xFFF8F8F8),
          ),
          titleSmall: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0x66F8F8F8),
          ),
        ),
      ),
      home: const BottomNavigatonBarView(),
    );
  }
}
