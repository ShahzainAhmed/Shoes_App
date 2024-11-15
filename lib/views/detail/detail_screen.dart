import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_app/models/large_tiles_model.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';
import 'package:shoes_app/views/detail/widgets/bottomsheet_button.dart';
import 'package:shoes_app/views/detail/widgets/shoe_size_selector.dart';

class DetailScreen extends StatelessWidget {
  final LargeTilesModel largeTilesModel;
  const DetailScreen({super.key, required this.largeTilesModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 20.r,
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(
              Icons.favorite_outline,
              color: AppColors.kBlackColor,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 130.h, child: Image.asset(largeTilesModel.image)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            height: Get.height * 0.6,
            width: Get.width,
            decoration: const BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    largeTilesModel.title,
                    style: AppTypography.kLight22,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    largeTilesModel.subtitle,
                    style: AppTypography.kLight10
                        .copyWith(color: AppColors.kLightestGreyColor),
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    children: [
                      const Icon(
                        size: 22,
                        Icons.star,
                        color: AppColors.kOrangeColor,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        largeTilesModel.ratings,
                        style: AppTypography.kLight12.copyWith(
                          color: AppColors.kLightBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "SELECT SIZE",
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kLightestGreyColor),
                  ),
                  SizedBox(height: 20.h),
                  const ShoeSizeSelector(),
                  Text(
                    "DESCRIPTION",
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kLightestGreyColor),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    largeTilesModel.description,
                    style: AppTypography.kLight14.copyWith(
                      color: AppColors.kLightBlackColor.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: const BottomSheetWidget(),
    );
  }
}
