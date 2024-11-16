import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onTap;
  const PrimaryButton(
      {super.key, this.color, this.textColor, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: Get.width,
      child: Bounce(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: color ?? AppColors.kLightBlackColor,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Center(
                child: Text(
              text ?? "Add to Bag",
              style: AppTypography.kMedium14
                  .copyWith(color: textColor ?? AppColors.kWhiteColor),
            )),
          ),
        ),
      ),
    );
  }
}
