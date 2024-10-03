import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandit_ji/styles/screen_utils.dart';

class AppColors {
  /// Common
  final Color primaryColour = const Color(0xFFFF9933);
  final Color secondaryColour = const Color(0xFFF5E6CC);
  final Color accentColour = const Color(0xFF8B0000);
  final Color backgroundColour = const Color(0xFFFAFAFA);
  final Color textColour = const Color(0xFF333333);
}

class AppTextStyles {
  static TextStyle headline(
    BuildContext context,
    double? customFontSize,
    Color? customColour,
    double? textHeight,
  ) {
    // if custom font size
    final screenUtil = ScreenUtils(context);
    double fontSize = customFontSize ?? screenUtil.responsiveFontSize(0.10);
    Color color = customColour ?? AppColors().textColour;
    double height = textHeight ?? 1.0;
    return GoogleFonts.playfairDisplay(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      height: height,
    );
  }

  static TextStyle headlineItalics(
    BuildContext context,
    double? customFontSize,
    Color? customColour,
    double? textHeight,
  ) {
    // if custom font size
    final screenUtil = ScreenUtils(context);
    double fontSize = customFontSize ?? screenUtil.responsiveFontSize(0.10);
    Color color = customColour ?? AppColors().textColour;
    double height = textHeight ?? 1.0;
    return GoogleFonts.playfairDisplay(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      height: height,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle body(
      BuildContext context, double? customFontSize, Color? customColour) {
    // if custom font there then use nahi toh default
    final screenUtil = ScreenUtils(context);
    double fontSize = customFontSize ?? screenUtil.responsiveFontSize(0.10);
    Color color = customColour ?? AppColors().textColour;
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      // fontWeight: FontWeight.bold,
      color: color,
    );
  }

  // static TextStyle bodyText(BuildContext context) {
  //   final screenUtil = ScreenUtils(context);
  //   return GoogleFonts.playfair(
  //     fontSize: screenUtil.responsiveFontSize(0.05), // 8% of screen width
  //     fontWeight: FontWeight.bold,
  //     color: AppColors().textColour,
  //   );
  // }
}

// class boxDecoration {
//   static boxDecoration bigBoxes(BuildContext context, Color? customColour) {
//     final screenUtil = ScreenUtils(context);
//     Color color = customColour ?? AppColors().textColour;
//     return BoxDecoration();
//   }
// }
