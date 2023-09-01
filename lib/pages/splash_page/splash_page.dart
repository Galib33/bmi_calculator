import 'package:bmi_calculator_homework/constants/app_colors.dart';
import 'package:bmi_calculator_homework/constants/app_sized_boxes.dart';
import 'package:bmi_calculator_homework/pages/splash_page/splash_image_container.dart';

import '../home_page/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    goingPage();

    super.initState();
  }

  void goingPage() async {
    await Future.delayed(const Duration(seconds: 5));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SplashImageContainer(),
            AppSizedBox.sizedBoxH25,
            RefreshProgressIndicator(
              backgroundColor: AppColors.blackColor,
              color: AppColors.yellowColor,
            ),
          ],
        ),
      ),
    );
  }
}
