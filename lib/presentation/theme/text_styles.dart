import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_cubits/presentation/theme/app_colors.dart';

class TextStyles {
  static const kTextStyleWhite = TextStyle(
    color: AppColors.whiteColor,
  );
  static const kTextStyle12White = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12,
  );

  static const kTextStyle14White = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14,
  );

  static const kTextStyle18White = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18,
  );

  static const kTextStyleBoldWhite = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

  static const kTextStyleBtn = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
  );

  static final kTextStyle25Russo = GoogleFonts.russoOne(
    color: AppColors.whiteColor,
    fontSize: 25,
  );

  static final kTextStyle35Russo = GoogleFonts.russoOne(
    color: AppColors.whiteColor,
    fontSize: 35,
  );
}
