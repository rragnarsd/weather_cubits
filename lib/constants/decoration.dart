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
}
