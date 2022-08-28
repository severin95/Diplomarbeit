import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _darkPrimaryColor = Color(0xFF263238);
  static const Color _darkPrimaryContainerColor = Color(0xFF4C555A);
  static final Color _darkOnPrimaryColor = Color(0xFF4C555A);
  static const Color _darkTextColorPrimary = Color(0xFFFFFFFF);
  static final Color _appbarColorDark = Color(0xFF37474F);
  static const Color _iconColor = Color(0xFFFFFFFF);
  static const Color _accentColorDark = Color(0xFF4AD9D9);

  static const TextStyle _darkThemeHeadingTextStyle = TextStyle(
      color: _darkTextColorPrimary,
      fontFamily: "Rubik",
      fontSize: 20,
      fontWeight: FontWeight.bold);

  static const TextStyle _darkThemeBodyTextStyle = TextStyle(
      color: _darkTextColorPrimary,
      fontFamily: "Rubik",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkThemeHeadingTextStyle,
    bodyText1: _darkThemeBodyTextStyle,
  );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
          floatingLabelStyle: const TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)));

  static final ThemeData darkTheme = ThemeData(
      inputDecorationTheme: _inputDecorationTheme,
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorDark,
          iconTheme: const IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorDark,
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _accentColorDark,
        onPrimary: _darkOnPrimaryColor,
        primaryContainer: _darkPrimaryContainerColor,
      ),
      textTheme: _darkTextTheme);
}
