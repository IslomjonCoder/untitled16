import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled16/utils/colors.dart';

class AppStyle {
  static TextStyle headlineBold = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle titleMedium = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle titleBold = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle titleRegular = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static TextStyle labelRegular = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.c6A6A6E,
  );
  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 9,
    fontWeight: FontWeight.w500,
    color: AppColors.c6A6A6E,
  );
}
