import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.kLightBlackColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            fillColor: AppColors.kWhiteColor,
            filled: true,
            suffixIcon:
                const Icon(Icons.search, color: AppColors.kVeryLightGrey),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBlackColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(
                color: AppColors.kVeryLightGrey.withOpacity(0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: AppColors.kVeryLightGrey.withOpacity(0.4),
              ),
            ),
            hintText: 'Search shoes...',
            hintStyle: AppTypography.kLight14
                .copyWith(color: AppColors.kVeryLightGrey),
          ),
        ),
      ),
    );
  }
}
