import 'package:flutter/material.dart';

import 'constants/app_titles.dart';
import 'pages/splash_page/splash_page.dart';
import 'themes/general_theme_datas.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTitles.generalAppTitle,
      debugShowCheckedModeBanner: false,
      theme: GeneralThemeDatas.generalAppTheme,
      home: const SplashPage(),
    );
  }
}
