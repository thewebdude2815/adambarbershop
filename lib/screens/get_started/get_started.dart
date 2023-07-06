import 'package:adambarbershop/components/common_button.dart';
import 'package:adambarbershop/config/routes.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                const Spacer(),
                Center(
                  child: Image.asset(
                    AppAssets.beardPicImage,
                    height: 339.h,
                    width: 331.w,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'Book your schedule with your favorite barber',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.bodyBold34.copyWith(
                      color: AppColors.kTextColor, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 45.h,
                ),
                CommonButton(
                    onTap: () {
                      Get.toNamed(routeSignin);
                    },
                    text: "Get Started",
                    isFilled: true,
                    hasIcon: false),
                SizedBox(
                  height: 57.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60.h,
                        height: 51.h,
                        decoration: BoxDecoration(
                            color: AppColors.kTextColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                          child: Text(
                            'Aa',
                            style: AppTextStyle.bodyBold34.copyWith(
                                color: AppColors.kWhiteColor,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.h,
                        height: 51.h,
                        decoration: BoxDecoration(
                            color: AppColors.kTextColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                          child: Text(
                            'ע',
                            style: AppTextStyle.bodyBold34.copyWith(
                                color: AppColors.kWhiteColor,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.h,
                        height: 51.h,
                        decoration: BoxDecoration(
                            color: AppColors.kTextColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                          child: Text(
                            'ع',
                            style: AppTextStyle.bodyBold34.copyWith(
                                color: AppColors.kWhiteColor,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
