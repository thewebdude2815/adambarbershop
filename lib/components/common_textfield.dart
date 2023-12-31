// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';

class CommonTextFieldNew extends StatefulWidget {
  CommonTextFieldNew({
    Key? key,
    this.labelText,
    this.initialText,
    this.prefixSvg,
    this.prefixPadding,
    this.prefixOnTap,
    this.prefixHeight,
    this.prefixWidth,
    this.suffixSvg,
    this.suffixPadding,
    this.suffixOnTap,
    this.suffixHeight,
    this.suffixWidth,
    this.hintText,
    this.prefixText,
    this.inputFormatters,
    required this.onSaved,
    required this.validator,
    this.onTap,
    this.readOnly,
    this.obscure,
    this.enabled,
    this.controller,
    this.autoValidateMode,
    this.onChanged,
    this.maxLines,
    this.disableBorder,
    this.fillColor,
    this.hintStyle,
    required this.filled,
    this.textStyle,
    this.cursorColor,
    this.autoFocused,
    this.onFieldSubmit,
    this.image,
    this.textAlign,
    this.hintDirection,
    this.textDirection,
    this.focusNode,
    this.capitalization,
    this.inputType,
    this.isDense,
    this.contentPadding,
    this.prefixIconColor,
    this.suffixIconColor,
    this.borderRadius,
    this.textInputAction,
    this.outerLabel,
  }) : super(key: key);
  final String? labelText, outerLabel;
  final String? initialText;
  final String? suffixSvg, prefixSvg;
  final String? image;
  final String? hintText;
  TextAlign? textAlign;
  final String? prefixText;
  final int? maxLines;
  TextDirection? hintDirection;
  TextInputAction? textInputAction;

  final TextStyle? textStyle, hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  bool filled;
  EdgeInsetsGeometry? contentPadding;
  bool? readOnly, obscure, enabled, disableBorder, autoFocused, isDense;
  FormFieldValidator<String>? validator;
  FormFieldSetter<String>? onSaved, onFieldSubmit;
  VoidCallback? onTap;
  final VoidCallback? suffixOnTap, prefixOnTap;
  final EdgeInsets? suffixPadding, prefixPadding;
  final double? suffixHeight, suffixWidth, prefixHeight, prefixWidth;
  TextEditingController? controller;
  AutovalidateMode? autoValidateMode;
  void Function(String? text)? onChanged;
  final Color? fillColor, cursorColor;
  final TextDirection? textDirection;
  final FocusNode? focusNode;
  final TextCapitalization? capitalization;
  final TextInputType? inputType;
  final Color? prefixIconColor, suffixIconColor;
  final double? borderRadius;

  @override
  State<CommonTextFieldNew> createState() => _CommonTextFieldNewState();
}

class _CommonTextFieldNewState extends State<CommonTextFieldNew> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.outerLabel == null
            ? const SizedBox()
            : Text(
                widget.outerLabel ?? "",
                style: AppTextStyle.bodyNormal12.copyWith(
                    color: AppColors.kMainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 16.sp
                        : 8.sp),
              ),
        widget.outerLabel == null
            ? const SizedBox()
            : SizedBox(
                height: 4.h,
              ),
        Container(
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? 48.h
              : 100.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 2),
                blurRadius: 4.sp,
                spreadRadius: 2.sp,
              ),
            ],
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 8.r
                  : 16.r,
            ),
            border: Border.all(
                color: const Color(0xffa1a1a1).withOpacity(0.6), width: 2.h),
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [
            //       const Color(0xFFA1a1a1).withOpacity(0.9),
            //       const Color(0xFFA1a1a1).withOpacity(0.7)
            //     ]),
          ),
          child: Container(
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 5.r
                    : 12.r,
              ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0.3),
                    const Color(0xffffffff)
                  ]),
            ),
            child: Row(
              children: [
                widget.image == null
                    ? const SizedBox()
                    : Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                        ),
                        child: Image.asset(
                          widget.image!,
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 25.h
                              : 35.h,
                          width: 25.w,
                        ),
                      ),
                Expanded(
                  child: TextFormField(
                    textInputAction: widget.textInputAction,
                    textDirection: widget.textDirection,
                    textAlign: widget.textAlign == null
                        ? TextAlign.start
                        : widget.textAlign!,
                    maxLines:
                        widget.obscure ?? false ? 1 : widget.maxLines ?? 1,
                    enabled: widget.enabled,
                    initialValue: widget.initialText,
                    controller: widget.controller,
                    // textDirection: TextDirection.rtl,
                    // style: widget.textStyle ??
                    //     AppTextStyle.componentTextStyle.copyWith(
                    //       color: AppColors.kWhiteColor,
                    //       height: 1.6,
                    //     ),
                    obscureText:
                        (widget.obscure ?? false) ? hidePassword : false,
                    onChanged: widget.onChanged,

                    cursorColor:
                        widget.cursorColor ?? AppColors.kSecondaryColor,
                    autovalidateMode: widget.autoValidateMode,
                    inputFormatters: widget.inputFormatters,
                    autofocus: widget.autoFocused ?? false,
                    focusNode: widget.focusNode,

                    textCapitalization:
                        widget.capitalization ?? TextCapitalization.sentences,
                    keyboardType: widget.inputType,
                    style: widget.textStyle ??
                        AppTextStyle.bodyNormal16
                            .copyWith(color: AppColors.kSecondaryColor),
                    decoration: InputDecoration(
                      isDense: widget.isDense ?? true,
                      fillColor: Colors.transparent,
                      filled: widget.filled,
                      border: InputBorder.none,
                      // focusedBorder: widget.disableBorder == true
                      //     ? InputBorder.none
                      //     : OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: AppColors.kBlackColor,
                      //           width: 1.h,
                      //         ),
                      //         borderRadius:
                      //             BorderRadius.circular(widget.borderRadius ?? 5.r),
                      //       ),
                      hintStyle: widget.hintStyle ??
                          AppTextStyle.bodyNormal16
                              .copyWith(color: AppColors.kSecondaryColor),
                      hintTextDirection: widget.hintDirection,
                      contentPadding: widget.contentPadding ??
                          EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? 16.w
                                  : 12.w,
                              vertical: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? 8.h
                                  : 16.h),
                      // enabledBorder: widget.disableBorder == true
                      //     ? InputBorder.none
                      //     : OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: AppColors.kBlackColor,
                      //           width: 1.h,
                      //         ),
                      //         borderRadius:
                      //             BorderRadius.circular(widget.borderRadius ?? 5.r),
                      //       ),
                      // border: widget.disableBorder == true
                      //     ? InputBorder.none
                      //     : OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: AppColors.kBlackColor,
                      //           width: 1.h,
                      //         ),
                      //         borderRadius:
                      //             BorderRadius.circular(widget.borderRadius ?? 5.r),
                      //       ),
                      // errorBorder: widget.disableBorder == true
                      //     ? InputBorder.none
                      //     : OutlineInputBorder(
                      //         borderRadius:
                      //             BorderRadius.circular(widget.borderRadius ?? 5.r),
                      //         borderSide: BorderSide(
                      //           color: AppColors.kBlackColor,
                      //           width: 1.h,
                      //         ),
                      //       ),
                      // focusedErrorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: AppColors.kBlackColor,
                      //     width: 1.h,
                      //   ),
                      //   borderRadius: BorderRadius.circular(widget.borderRadius ?? 5.r),
                      // ),
                      // errorStyle: AppTextStyle.fieldErrorTextStyle,
                      alignLabelWithHint: true,
                      labelText: widget.labelText,
                      hintText: widget.hintText,
                      prefixIcon: widget.prefixSvg != null
                          ? Padding(
                              padding: widget.prefixPadding ??
                                  EdgeInsets.only(
                                    top: 6.h,
                                    bottom: 6.h,
                                    left: 6.w,
                                  ),
                              child: IconButton(
                                onPressed: widget.prefixOnTap,
                                splashRadius: 20.h,
                                icon: SvgPicture.asset(
                                  widget.prefixSvg!,
                                  height: widget.prefixHeight != null
                                      ? widget.prefixHeight!.h
                                      : 32.h,
                                  width: widget.prefixWidth != null
                                      ? widget.prefixWidth!.h
                                      : 32.h,
                                  color: widget.prefixIconColor ??
                                      AppColors.kSecondaryColor,
                                  //   color: widget.focusNode != null
                                  //       ? widget.focusNode!.hasFocus
                                  //           ? AppColors.mainkSecondaryColor90
                                  //           :AppColors.mainBlack60
                                  //       : widget.prefixIconColor??AppColors.mainBlack60,
                                ),
                              ),
                            )
                          : null,
                      // suffixIcon: widget.obscure == true
                      //     ? Padding(
                      //         padding: EdgeInsets.only(right: 4.w),
                      //         child: IconButton(
                      //           onPressed: () {
                      //             setState(() {
                      //               if (hidePassword) {
                      //                 hidePassword = false;
                      //               } else {
                      //                 hidePassword = true;
                      //               }
                      //             });
                      //           },
                      //           splashRadius: 20.h,
                      //           icon: SvgPicture.asset(
                      //             hidePassword ? AppAssets.eyeSlashSvg : AppAssets.eyeSvg,
                      //             height: 20.h,
                      //             width: 20.w,
                      //             color: AppColors.kSecondaryColor,
                      //           ),
                      //           color: AppColors.kSecondaryColor,
                      //         ),
                      //       )
                      //     : widget.suffixSvg != null
                      //         ? Padding(
                      //             padding:
                      //                 widget.suffixPadding ?? EdgeInsets.only(right: 4.w),
                      //             child: IconButton(
                      //               onPressed: widget.suffixOnTap,
                      //               splashRadius: 20.h,
                      //               icon: SvgPicture.asset(
                      //                 widget.suffixSvg!,
                      //                 height: widget.suffixHeight != null
                      //                     ? widget.suffixHeight!.h
                      //                     : 24.h,
                      //                 width: widget.suffixWidth != null
                      //                     ? widget.suffixWidth!.h
                      //                     : 24.w,
                      //                 color:
                      //                     widget.suffixIconColor ?? AppColors.kWhiteColor,
                      //               ),
                      //               color: AppColors.kWhiteColor,
                      //             ),
                      //           )
                      //         : null,
                    ),
                    readOnly: widget.readOnly ?? false,
                    onSaved: widget.onSaved,
                    validator: widget.validator,
                    onTap: widget.onTap,
                    onFieldSubmitted: widget.onFieldSubmit,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
