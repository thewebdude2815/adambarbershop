// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';

class CommonButton extends StatelessWidget {
  final String text;
  double? height;
  double? width;
  Color? fillColor;
  bool? hasBorder;
  final void Function() onTap;
  final bool isFilled;
  final bool hasIcon;
  String? icon;
  Color? iconColor;
  TextStyle? textStyle;
  Color? borderColor;
  double? borderRadius;
  Color? textColor;
  CommonButton(
      {super.key,
      this.height,
      required this.onTap,
      required this.text,
      this.fillColor,
      required this.isFilled,
      required this.hasIcon,
      this.iconColor,
      this.icon,
      this.textStyle,
      this.borderColor,
      this.borderRadius,
      this.textColor,
      this.hasBorder,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 68.h,
        width: width ?? 311.w,
        margin: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
            color: fillColor ?? AppColors.kTextColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.r),
              bottomLeft: Radius.circular(18.r),
              topRight: Radius.circular(18.r),
              bottomRight: Radius.circular(44.r),
            ),
            border: Border.all(
                width: borderColor != null ? 1 : 0,
                color:
                    borderColor != null ? borderColor! : Colors.transparent)),
        child: Center(
          child: hasIcon
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: textStyle ??
                            AppTextStyle.bodySemiBold16.copyWith(
                              color: isFilled
                                  ? AppColors.kMainColor
                                  : AppColors.kBlackColor,
                            ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        icon ?? AppAssets.logoIcon,
                        color: iconColor ?? AppColors.kBlackColor,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 24.h
                            : 36.h,
                      ),
                    ],
                  ),
                )
              : Text(
                  text,
                  style: textStyle ??
                      AppTextStyle.bodyBold18.copyWith(
                          color: textColor ?? AppColors.kWhiteColor,
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 18.sp
                              : 12.sp),
                ),
        ),
      ),
    );
  }
}
