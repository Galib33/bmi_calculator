import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class GeneralThemeDatas {
  GeneralThemeDatas._();

  static ThemeData get generalAppTheme => ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(color: AppColors.blackColor),
        scaffoldBackgroundColor: AppColors.blackColor,
      );
}
