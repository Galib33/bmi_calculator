import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle get columnTitleTextStyle =>
      const TextStyle(color: AppColors.whiteColor, fontSize: 18);
  static const TextStyle titleTextStyle = TextStyle(
      color: AppColors.whiteColor, fontSize: 35, fontWeight: FontWeight.bold);

  static const TextStyle dropDownTextStyle = TextStyle(fontSize: 18);
}
