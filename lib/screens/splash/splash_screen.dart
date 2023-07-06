import 'package:adambarbershop/config/routes.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.toNamed(routeGetStarted);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              AppAssets.bgImage,
            ),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Image.asset(
              AppAssets.logoImage,
              height: 339.h,
              width: 331.w,
            ),
          ),
        ),
      ),
    );
  }
}
