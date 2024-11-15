import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_app/models/categories_model.dart';
import 'package:shoes_app/models/large_tiles_model.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';
import 'package:shoes_app/views/detail/detail_screen.dart';
import 'package:shoes_app/views/home/widgets/categories_tile.dart';
import 'package:shoes_app/views/home/widgets/large_tiles.dart';
import 'package:shoes_app/views/home/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(
              Icons.notifications_none,
              color: AppColors.kBlackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBarWidget(),
            SizedBox(height: 20.h),
            SizedBox(
              height: 55.h,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 14.w),
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return CategoriesTile(categoriesModel: categoriesList[index]);
                },
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MOST POPULAR",
                    style: AppTypography.kMedium14.copyWith(
                      color: AppColors.kLightestGreyColor,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "See all",
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kOrangeColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: largeTilesList.length,
              itemBuilder: (context, index) {
                return LargeTiles(
                  onTap: () => Get.to(
                    DetailScreen(largeTilesModel: largeTilesList[index]),
                  ),
                  largeTilesModel: largeTilesList[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
