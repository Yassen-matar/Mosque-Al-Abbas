import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: CustomColors.skipColor),
          actionsIconTheme:
              const IconThemeData(color: CustomColors.iconColorAppBar),
          toolbarTextStyle:
              const TextTheme(bodyMedium: TextStyle(color: Colors.black))
                  .bodyMedium,
          titleTextStyle:
              const TextTheme(bodyMedium: TextStyle(color: Colors.black))
                  .bodyMedium),
      primaryColor: CustomColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.secondaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 50, color: Colors.red),
        ),
      ),
      fontFamily: 'Cairo',
      textTheme: const TextTheme(
        displayMedium: TextStyle(
          color: CustomColors.primaryColor,
          fontSize: 14,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: CustomColors.primaryColor,
          fontSize: 14,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }

  static TextStyle white18Bold = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: "Cairo",
    fontWeight: FontWeight.bold,
  );

  static TextStyle grey18Bold = const TextStyle(
    color: Colors.grey,
    fontSize: 18,
    fontFamily: "Cairo",
    fontWeight: FontWeight.bold,
  );
  static TextStyle black18Bold = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: "Cairo",
    fontWeight: FontWeight.bold,
  );

  static SnackBar customSnackBar(String message, String type) {
    late final Color backgroundColor;
    Color textColor = Colors.white;
    switch (type) {
      case "success":
        {
          backgroundColor = CustomColors.successColor;
          break;
        }
      case "danger":
        {
          backgroundColor = CustomColors.dangerColor;
          break;
        }
      case "warning":
        {
          backgroundColor = CustomColors.warningColor;
          textColor = const Color(0xFF323232);
          break;
        }
      default:
        {
          backgroundColor = const Color(0xFF323232);
          textColor = Colors.white;
          break;
        }
    }
    return SnackBar(
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
