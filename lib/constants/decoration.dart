import 'package:flutter/material.dart';

import 'package:weather_cubits/constants/app_colors.dart';

class Decorations {
  static final kDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: AppColors.blackColor.withOpacity(.2),
  );

  static final kElevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.blackColor.withOpacity(.2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static final kOutlinedBorderDarker = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.whiteColor.withOpacity(.5),
    ),
    borderRadius: BorderRadius.circular(12),
  );

  static final kOutlinedBorderLighter = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.whiteColor.withOpacity(.3),
    ),
    borderRadius: BorderRadius.circular(12),
  );

  static final kElevatedButton = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    backgroundColor: AppColors.primaryColor,
  );
}
