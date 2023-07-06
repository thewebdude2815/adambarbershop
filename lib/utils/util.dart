import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:adambarbershop/components/common_button.dart';
import 'package:adambarbershop/components/common_dropdown.dart';
import 'package:adambarbershop/components/common_textfield.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';
import 'package:adambarbershop/helpers/app_texts.dart';

class Util {
  static void showLoading(String message) {
    EasyLoading.show(
      status: message,
      indicator: const CircularProgressIndicator.adaptive(
        backgroundColor: AppColors.kWhiteColor,
      ),
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.clear,
    );
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }

  static void setEasyLoading() {
    EasyLoading.instance
      ..textColor = AppColors.kMainColor
      ..indicatorSize = 22.w
      ..indicatorColor = AppColors.kMainColor
      ..indicatorType = EasyLoadingIndicatorType.foldingCube
      ..userInteractions = false
      ..dismissOnTap = false
      ..backgroundColor = AppColors.kWhiteColor
      ..animationStyle = EasyLoadingAnimationStyle.opacity
      ..animationDuration = const Duration(milliseconds: 400);
  }

  static void showErrorSnackBar(String message) {
    //Form Closing all previous SnackBars
    // if (Get.isSnackbarOpen) {
    //   Get.closeAllSnackbars();
    // }
    Get.snackbar(
      "",
      "",
      duration: const Duration(milliseconds: 1200),
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        message,
        style: AppTextStyle.bodyNormal16.copyWith(color: AppColors.kWhiteColor),
      ),
      messageText: const SizedBox(),
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      margin: EdgeInsets.only(bottom: 60.h, left: 16.w, right: 16.w),
      backgroundColor: AppColors.kMainColor,
    );
  }

  static void addadambarbershopatBottomSheet(String selectedadambarbershop) {
    Get.bottomSheet(
      ignoreSafeArea: true,
      isDismissible: true,
      isScrollControlled: true,
      enterBottomSheetDuration: const Duration(milliseconds: 200),
      exitBottomSheetDuration: const Duration(milliseconds: 200),
      barrierColor: AppColors.kBlackColor.withOpacity(0.5),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.r),
        topRight: Radius.circular(16.r),
      )),
      enableDrag: true,
      StatefulBuilder(builder: (context, StateSetter setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              width: 390.w,
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: CircleAvatar(
                        backgroundColor: AppColors.kWhiteColor,
                        radius: 14.r,
                        child: Icon(
                          Icons.close,
                          color: AppColors.kMainColor,
                          size: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 20.w
                              : 10.w,
                        ),
                      ),
                    ),
                  ),
                  CommonDropdownButton(
                    items: const [
                      AppTexts.kTasbehaat,
                      AppTexts.kTasbehaat,
                    ],
                    onSaved: (e) {},
                    onChange: (e) {},
                    showBorder: true,
                    label: AppTexts.kNameOfTasbeh,
                    hintText: selectedadambarbershop == ""
                        ? AppTexts.kSelect
                        : selectedadambarbershop,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  CommonTextFieldNew(
                      onSaved: (e) {},
                      borderRadius: 5.r,
                      validator: (e) {
                        return null;
                      },
                      outerLabel: AppTexts.kCount,
                      filled: false),
                  SizedBox(
                    height: 12.h,
                  ),
                  CommonButton(
                    onTap: () {},
                    borderRadius: 8.r,
                    width: double.infinity,
                    text: "Add",
                    isFilled: true,
                    hasIcon: false,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 60.h
                        : 90.h,
                    fillColor: AppColors.kSecondaryColor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 140.h
                        : 20.h,
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
