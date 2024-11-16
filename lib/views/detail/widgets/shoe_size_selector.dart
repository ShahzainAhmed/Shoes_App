import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';

class ShoeSizeSelector extends StatefulWidget {
  const ShoeSizeSelector({super.key});

  @override
  State<ShoeSizeSelector> createState() => _ShoeSizeSelectorState();
}

List shoeSizeList = [6, 6.5, 7, 7.5, 7.5, 8, 8.5, 9, 9.5];
int selectedIndex = 0;

class _ShoeSizeSelectorState extends State<ShoeSizeSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 1.5,
        ),
        itemCount: shoeSizeList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.kLightBlackColor
                    : AppColors.kSilvercolor,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kLightBlackColor.withOpacity(0.1),
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "US ${shoeSizeList[index].toString()}",
                style: AppTypography.kLight12.copyWith(
                  color: selectedIndex == index
                      ? AppColors.kWhiteColor
                      : AppColors.kLightBlackColor.withOpacity(1),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
