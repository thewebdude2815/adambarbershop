import 'package:adambarbershop/components/common_textfield.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                AppAssets.beardPicImage,
                height: 243.h,
                width: 260.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  height: 55.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      bottomLeft: Radius.circular(12.r),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFE0E0E0).withOpacity(0.9),
                          const Color(0xFFE0E0E0).withOpacity(0.7)
                        ]),
                    // border: Border.all(color: Color(0xFFE0E0E0), width: 3.w),
                  ),
                  child: Center(
                    child: Container(
                      height: 52.h,
                      width: 127.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFFA1A1A1).withOpacity(0.25),
                              const Color(0xFFffffff).withOpacity(0.5),
                              const Color(0xFFffffff)
                            ]),
                        // border: Border.all(color: Color(0xFFE0E0E0), width: 3.w),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: AppTextStyle.bodyNormal22.copyWith(
                              color: AppColors.kTextColor2,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      bottomRight: Radius.circular(12.r),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFE0E0E0).withOpacity(0.9),
                          const Color(0xFFE0E0E0).withOpacity(0.7)
                        ]),
                    // border: Border.all(color: Color(0xFFE0E0E0), width: 3.w),
                  ),
                  child: Center(
                    child: Container(
                      height: 52.h,
                      width: 127.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFB21313).withOpacity(0.11),
                              Color(0xFFB21313).withOpacity(0.2),
                              Color(0xFFB21313).withOpacity(0.2),
                              Color(0xFFB21313).withOpacity(0.2),
                              Color(0xFFB21313).withOpacity(0.18),
                            ]),
                        // border: Border.all(color: Color(0xFFE0E0E0), width: 3.w),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: AppTextStyle.bodyNormal22.copyWith(
                              color: AppColors.kTextColor2,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CommonTextFieldNew(
              onSaved: (e) {},
              validator: (e) {
                return null;
              },
              filled: true,
              contentPadding: EdgeInsets.only(top: 2.h),
            )
          ],
        ),
      ),
    );
  }
}
