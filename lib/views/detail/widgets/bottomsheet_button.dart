import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SizedBox(
        height: 45.h,
        width: Get.width,
        child: Bounce(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.kLightBlackColor,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Center(
                child: Text(
              "Add to Bag",
              style: AppTypography.kMedium14
                  .copyWith(color: AppColors.kWhiteColor),
            )),
          ),
        ),
      ),
    );
  }
}
