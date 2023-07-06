import 'package:adambarbershop/components/common_button.dart';
import 'package:adambarbershop/components/common_textfield.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 0.h
                    : 24.h,
          ),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                AppAssets.bgImage,
              ),
              fit: BoxFit.cover,
            )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 40.h
                        : 60.h,
                  ),
                  Center(
                    child: Image.asset(
                      AppAssets.beardPicImage,
                      height: 243.h,
                      width: 260.w,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 20.h
                        : 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 55.h
                            : 100.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 4.sp,
                              spreadRadius: 2.sp,
                            ),
                          ],
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
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 52.h
                                : 100.h,
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
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 55.h
                            : 100.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 4.sp,
                              spreadRadius: 2.sp,
                            ),
                          ],
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
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 52.h
                                : 100.h,
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
                                'Sign Up',
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
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 16.h
                        : 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: CommonTextFieldNew(
                            textStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            outerLabel: "First Name",
                            onSaved: (e) {},
                            validator: (e) {
                              return null;
                            },
                            filled: true,
                            contentPadding: EdgeInsets.only(left: 16.h),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: CommonTextFieldNew(
                            textStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            outerLabel: "Last Name",
                            onSaved: (e) {},
                            validator: (e) {
                              return null;
                            },
                            filled: true,
                            contentPadding: EdgeInsets.only(left: 16.h),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 16.h
                        : 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: CommonTextFieldNew(
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            hintStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            outerLabel: "Birthday",
                            hintText: "year",
                            onSaved: (e) {},
                            validator: (e) {
                              return null;
                            },
                            filled: true,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: CommonTextFieldNew(
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            hintStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            outerLabel: "",
                            hintText: "month",
                            onSaved: (e) {},
                            validator: (e) {
                              return null;
                            },
                            filled: true,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: CommonTextFieldNew(
                            textStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            textAlign: TextAlign.center,
                            hintStyle: GoogleFonts.poppins(
                              color: AppColors.khintcolor,
                            ),
                            outerLabel: "",
                            hintText: "day",
                            onSaved: (e) {},
                            validator: (e) {
                              return null;
                            },
                            filled: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 16.h
                        : 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: CommonTextFieldNew(
                      textStyle: GoogleFonts.poppins(
                        color: AppColors.khintcolor,
                      ),
                      hintStyle: GoogleFonts.poppins(
                        color: AppColors.khintcolor,
                      ),
                      outerLabel: "phone number",
                      image: AppAssets.callImage,
                      hintText: "050-xxx-xxxx",
                      onSaved: (e) {},
                      validator: (e) {
                        return null;
                      },
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 16.h
                        : 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: CommonTextFieldNew(
                      textStyle: GoogleFonts.poppins(
                        color: AppColors.khintcolor,
                      ),
                      hintStyle: GoogleFonts.poppins(
                        color: AppColors.khintcolor,
                      ),
                      outerLabel: "Password",
                      obscure: true,
                      image: AppAssets.keyImage,
                      onSaved: (e) {},
                      validator: (e) {
                        return null;
                      },
                      filled: true,
                      contentPadding: EdgeInsets.only(left: 16.h),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 24.h
                        : 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Container(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 55.h
                          : 100.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
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
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: AppTextStyle.bodyNormal22.copyWith(
                              color: AppColors.kTextColor2,
                              fontSize: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? 26.sp
                                  : 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
