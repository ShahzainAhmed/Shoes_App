import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_app/models/categories_model.dart';
import 'package:shoes_app/resources/app_colors.dart';

class CategoriesTile extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const CategoriesTile({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kLightBlackColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      width: 65.w,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.asset(
          categoriesModel.image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
