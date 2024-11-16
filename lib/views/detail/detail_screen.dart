import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:shoes_app/models/large_tiles_model.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';
import 'package:shoes_app/views/detail/widgets/primary_button.dart';
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
            child: LikeButton(
              size: 30,
              circleColor: const CircleColor(
                start: AppColors.kLightBlackColor,
                end: AppColors.kLightBlackColor,
              ),
              bubblesColor: const BubblesColor(
                dotPrimaryColor: AppColors.kLightBlackColor,
                dotSecondaryColor: AppColors.kLightBlackColor,
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                  color: isLiked
                      ? AppColors.kLightBlackColor
                      : AppColors.kLightBlackColor,
                  size: 30,
                );
              },
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: 'large_tile_${largeTilesModel.image}',
            child: SizedBox(
              height: 130.h,
              child: Image.asset(largeTilesModel.image),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            height: Get.height * 0.6,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.kLightBlackColor.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInUp(
                    duration: const Duration(milliseconds: 600),
                    child: Text(
                      largeTilesModel.title,
                      style: AppTypography.kLight22,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  FadeInUp(
                    duration: const Duration(milliseconds: 700),
                    child: Text(
                      largeTilesModel.subtitle,
                      style: AppTypography.kLight10
                          .copyWith(color: AppColors.kLightestGreyColor),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  FadeInUp(
                    duration: const Duration(milliseconds: 800),
                    child: Row(
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
                  ),
                  SizedBox(height: 20.h),
                  FadeInUp(
                    duration: const Duration(milliseconds: 900),
                    child: Text(
                      "SELECT SIZE",
                      style: AppTypography.kMedium12
                          .copyWith(color: AppColors.kLightestGreyColor),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1000),
                    child: const ShoeSizeSelector(),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1100),
                    child: Text(
                      "DESCRIPTION",
                      style: AppTypography.kMedium12
                          .copyWith(color: AppColors.kLightestGreyColor),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      largeTilesModel.description,
                      style: AppTypography.kLight14.copyWith(
                        color: AppColors.kLightBlackColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: FadeInUp(
          child: const PrimaryButton(),
        ),
      ),
    );
  }
}
