import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      accentColor: Colors.black,
      splashColor: Colors.transparent,
      fontFamily: 'IBM',
    );
  }
}
