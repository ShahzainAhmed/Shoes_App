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
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(16.r),
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
