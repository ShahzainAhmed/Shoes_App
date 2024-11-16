import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_app/models/large_tiles_model.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';

class LargeTiles extends StatelessWidget {
  final VoidCallback onTap;
  final LargeTilesModel largeTilesModel;
  const LargeTiles(
      {super.key, required this.largeTilesModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kLightBlackColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'large_tile_${largeTilesModel.image}',
                child: Container(
                  height: 160.h,
                  decoration: BoxDecoration(
                    color: AppColors.kBackgroundColor,
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                      image: AssetImage(largeTilesModel.image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              const Divider(color: AppColors.kLightGreyColor),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(largeTilesModel.title, style: AppTypography.kLight18),
                  Text(
                    "\$${largeTilesModel.price}",
                    style: AppTypography.kBold18,
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Text(
                largeTilesModel.subtitle,
                style: AppTypography.kLight10.copyWith(
                  color: AppColors.kLightestGreyColor.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
