import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:adambarbershop/config/routes.dart';
import 'package:adambarbershop/utils/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.kBlackColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.kBlackColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: ScreenUtilInit(
        builder: ((context, child) {
          final easyLoading = EasyLoading.init();
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              ScreenUtil.init(
                context,
                designSize: const Size(375, 812),
              );
              child = easyLoading(context, child);
              Util.setEasyLoading();
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
                child: child,
              );
            },
            getPages: Routes.routes,
            initialRoute: routeSplash,
            defaultTransition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 300),
          );
        }),
      ),
    );
  }
}
