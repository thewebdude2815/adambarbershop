// ignore_for_file: must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adambarbershop/helpers/app_colors.dart';
import 'package:adambarbershop/helpers/app_text_style.dart';

class CommonDropdownButton extends StatefulWidget {
  final List items;
  void Function(dynamic) onSaved;
  String? hintText;
  String? value;
  void Function(dynamic) onChange;
  String? label;
  bool? isFilled;
  Color? textColor;
  bool? showBorder;
  CommonDropdownButton(
      {Key? key,
      required this.items,
      required this.onSaved,
      this.hintText,
      this.value,
      this.label,
      required this.onChange,
      this.textColor,
      this.showBorder,
      this.isFilled})
      : super(key: key);

  @override
  State<CommonDropdownButton> createState() => _CommonDropdownButtonState();
}

class _CommonDropdownButtonState extends State<CommonDropdownButton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        widget.label != null
            ? Text(
                widget.label!,
                style: AppTextStyle.bodyBold24.copyWith(
                    color: AppColors.kMainColor,
                    fontSize: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 24.sp
                        : 14.sp),
              )
            : const SizedBox(),
        widget.label != null
            ? SizedBox(
                height: 8.h,
              )
            : SizedBox(
                height: 0.h,
              ),
        DropdownButtonFormField2(
          iconStyleData: IconStyleData(
              iconEnabledColor: widget.isFilled != null
                  ? widget.textColor ?? AppColors.kWhiteColor
                  : AppColors.kMainColor),
          decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            contentPadding: EdgeInsets.only(
                top: MediaQuery.of(context).orientation == Orientation.portrait
                    ? 12.h
                    : 16.h,
                bottom:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 12.h
                        : 28.h,
                left: 0,
                right: widget.isFilled != null ? 0.w : 12.w),
            fillColor: widget.isFilled != null
                ? Colors.transparent
                : AppColors.kWhiteColor,
            filled: true,
            border: widget.showBorder == true
                ? widget.isFilled != null
                    ? UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3.h,
                            color: widget.textColor ?? AppColors.kBlackColor))
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(
                          color: AppColors.kBlackColor,
                        ),
                      )
                : const UnderlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: widget.showBorder == true
                ? widget.isFilled != null
                    ? UnderlineInputBorder(
                        borderSide: BorderSide(
                        color: widget.textColor ?? AppColors.kBlackColor,
                        width: 3.h,
                      ))
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(
                          color: AppColors.kBlackColor,
                        ),
                      )
                : const UnderlineInputBorder(borderSide: BorderSide.none),
          ),
          isExpanded: true,
          hint: Text(
            widget.hintText ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.bodyNormal16.copyWith(
                color: widget.textColor ?? AppColors.kMainColor,
                fontSize:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 16.sp
                        : 10.sp),
          ),
          items: widget.items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: widget.isFilled != null
                        ? AppTextStyle.bodyBold24.copyWith(
                            color: widget.textColor ?? AppColors.kWhiteColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700)
                        : AppTextStyle.bodyNormal16.copyWith(
                            color: widget.textColor ?? AppColors.kMainColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          value: widget.value,
          onSaved: widget.onSaved,
          onChanged: widget.onChange,
        ),
      ],
    );
  }
}
