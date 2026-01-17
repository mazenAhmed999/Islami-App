import 'package:flutter/material.dart';
import 'package:islami/core/theme/color_pallete.dart';

abstract class ThemeManager {
  static ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Janna',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Janna',
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Janna',
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: ColorPallete.colorFont,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Janna',
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Janna',
        fontWeight: FontWeight.bold,
        color: ColorPallete.colorFont,
        fontSize: 14,
      ),
    ),
    primaryColor: ColorPallete.primaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPallete.primaryColor,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
