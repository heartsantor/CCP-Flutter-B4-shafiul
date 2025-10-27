import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Primary blue used in the screenshot
  static const Color primary = Color(0xFF2A6FFE);
  static const Color textDark = Color(0xFF101828);
  static const Color text = Color(0xFF344054);
  static const Color textMuted = Color(0xFF667085);
  static const Color bg = Color(0xFFF5F7FB);
  static const Color surface = Colors.white;
  static const Color border = Color(0xFFE4E7EC);
  static const Color chipBg = Color(0xFFEFF4FF);
}

class AppTheme {
  static ThemeData light() {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.bg,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        background: AppColors.bg,
      ),
      textTheme: GoogleFonts.interTextTheme(base.textTheme).copyWith(
        titleLarge: GoogleFonts.inter(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: AppColors.textDark,
        ),
        titleMedium: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: AppColors.textDark,
        ),
        titleSmall: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: AppColors.textDark,
        ),
        bodyMedium: GoogleFonts.inter(fontSize: 14, color: AppColors.text),
        bodySmall: GoogleFonts.inter(fontSize: 12, color: AppColors.textMuted),
        labelLarge: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.bg,
        foregroundColor: AppColors.textDark,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.border),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.border),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      chipTheme: const ChipThemeData(
        side: BorderSide(color: Colors.transparent),
        backgroundColor: AppColors.chipBg,
        labelStyle: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        shape: StadiumBorder(),
        selectedColor: AppColors.chipBg,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
