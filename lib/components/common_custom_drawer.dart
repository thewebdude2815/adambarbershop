import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:adambarbershop/components/common_drawer_list_widget.dart';
import 'package:adambarbershop/helpers/app_assets.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';

class CommonCustomDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CommonCustomDrawer({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.kSecondaryColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 12.h
                          : 4.h),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 290
                        : 180,
                child: DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
                  decoration: const BoxDecoration(
                    color: AppColors.kSecondaryColor,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            scaffoldKey.currentState?.closeDrawer();
                          },
                          icon: CircleAvatar(
                            backgroundColor: AppColors.kWhiteColor,
                            radius: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 14.r
                                : 24.r,
                            child: Center(
                              child: Icon(
                                Icons.close,
                                color: AppColors.kMainColor,
                                size: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 20.w
                                    : 8.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 40.h
                            : 0.h,
                      ),
                      Text(
                        'تسبیح کاؤنٹر',
                        style: AppTextStyle.bodyBold34.copyWith(
                            color: AppColors.kWhiteColor,
                            fontSize: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 34.sp
                                : 14.sp),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 8.h
                            : 0.h,
                      ),
                      Text('درود پاک، احکمات، فضائل',
                          style: AppTextStyle.bodyBold24.copyWith(
                              color: AppColors.kWhiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? 24.sp
                                  : 10.sp)),
                      SizedBox(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 28.h
                            : 2.h,
                      ),
                      Divider(
                        thickness: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 3.h
                            : 6.h,
                        color: AppColors.kSplashColor,
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 340.h,
              //   child: ListView(
              //     padding: EdgeInsets.zero,
              //     // shrinkWrap: true,
              //     children: [
              //       CommonDrawerListWidget(
              //         text: 'About',
              //         icon: AppAssets.aboutFilledIcon,
              //         onTap: () {},
              //       ),
              //       CommonDrawerListWidget(
              //         text: 'Settings',
              //         icon: AppAssets.settingsIcon,
              //         onTap: () {},
              //       ),
              //       CommonDrawerListWidget(
              //         text: 'Suggestions',
              //         icon: AppAssets.suggestionsIcon,
              //         onTap: () {},
              //       ),
              //       CommonDrawerListWidget(
              //         text: 'Rate',
              //         icon: AppAssets.rateIcon,
              //         onTap: () {},
              //       ),
              //       CommonDrawerListWidget(
              //         text: 'Share',
              //         icon: AppAssets.shareIcon,
              //         onTap: () {},
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20.h,
              ),
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? const Spacer()
                  : const SizedBox(),
              Text('Powered By SeoSiteSoft',
                  style: AppTextStyle.bodyNormal14.copyWith(
                      color: AppColors.kWhiteColor,
                      fontSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 14.sp
                          : 8.sp)),
              SizedBox(
                height: 8.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
