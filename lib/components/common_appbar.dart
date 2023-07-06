import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';

PreferredSizeWidget commonAppBar({
  String? title,
  bool showBackButton = true,
  VoidCallback? onLeadingTap,
  bool? centerTitle = true,
  Widget? leadingWidget,
  List<Widget>? actions,
  double? titleSpacing,
  EdgeInsetsGeometry? showButtonPadding,
  TextStyle? textStyle,
  PreferredSizeWidget? bottom,
  BuildContext? context,
}) {
  return AppBar(
    toolbarHeight: MediaQuery.of(context!).orientation == Orientation.portrait
        ? 60.h
        : 110.h,
    elevation: 0,
    centerTitle: centerTitle,
    backgroundColor: AppColors.kSecondaryColor,
    titleSpacing: titleSpacing ?? 0,
    title: (title != null)
        ? Text(
            title,
            style: textStyle ??
                AppTextStyle.bodySemiBold20.copyWith(
                    color: AppColors.kWhiteColor,
                    fontSize: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 22.sp
                        : 16.sp),
          )
        : null,
    automaticallyImplyLeading: false,
    leading: showBackButton
        ? Padding(
            padding: showButtonPadding ??
                EdgeInsets.only(
                  left: 0.w,
                ),
            child: IconButton(
              onPressed: onLeadingTap ??
                  () {
                    Get.back();
                  },
              splashRadius: 24.h,
              icon: Icon(Icons.abc),
              // icon: SvgPicture.asset(
              //   AppAssets.backArrowIcon,
              //   color: AppColors.kWhiteColor,
              //   height:
              //       MediaQuery.of(context).orientation == Orientation.portrait
              //           ? 24.w
              //           : 32.w,
              //   width:
              //       MediaQuery.of(context).orientation == Orientation.portrait
              //           ? 24.w
              //           : 32.w,
              // ),
            ),
          )
        : leadingWidget,
    actions: actions,
    bottom: bottom,
  );
}
