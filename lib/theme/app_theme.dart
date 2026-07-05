import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color bg       = Color(0xFF0A1628); // 深夜蓝
  static const Color surface  = Color(0xFF12233F);
  static const Color card     = Color(0xFF1A2E4A);
  static const Color gold     = Color(0xFFF5C518); // 大力神杯金
  static const Color goldDark = Color(0xFFB8960C);
  static const Color textPrimary   = Color(0xFFEEF2FF);
  static const Color textSecondary = Color(0xFF8BA3C7);
  static const Color divider  = Color(0xFF243552);
  static const Color green    = Color(0xFF4CAF50); // 草地绿

  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bg,
    colorScheme: const ColorScheme.dark(
      primary: gold,
      surface: surface,
    ),
    textTheme: GoogleFonts.notoSansScTextTheme(ThemeData.dark().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: bg,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: GoogleFonts.notoSansSc(
        fontSize: 18, fontWeight: FontWeight.w700, color: textPrimary,
      ),
      iconTheme: const IconThemeData(color: textPrimary),
    ),
  );

  static TextStyle title({double size = 16, Color? color}) =>
      GoogleFonts.notoSansSc(
        fontSize: size,
        fontWeight: FontWeight.w800,
        color: color ?? textPrimary,
      );

  static TextStyle body({double size = 13, Color? color, double? height}) =>
      GoogleFonts.notoSansSc(
        fontSize: size,
        color: color ?? textSecondary,
        height: height,
      );

  static TextStyle number({double size = 22, Color? color}) =>
      GoogleFonts.robotoMono(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: color ?? gold,
      );
}
