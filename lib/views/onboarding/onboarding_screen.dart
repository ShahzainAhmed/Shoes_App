import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_app/resources/app_assets.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/resources/app_typography.dart';
import 'package:shoes_app/views/detail/widgets/primary_button.dart';
import 'package:shoes_app/views/home/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: Get.height * 0.65,
            width: Get.width,
            child: Image.asset(AppAssets.kOnboarding, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              height: Get.height * 0.4,
              width: Get.width,
              decoration: const BoxDecoration(
                color: AppColors.kLightBlackColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Text(
                    "Step into Style \n& Comfort",
                    style: AppTypography.kExtraBold30
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Smart, gorgeous & fashionable collections",
                    style: AppTypography.kMedium16
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                  const Spacer(),
                  PrimaryButton(
                    onTap: () => Get.to(const HomeScreen()),
                    text: "Browse Collection",
                    color: AppColors.kWhiteColor,
                    textColor: AppColors.kLightBlackColor,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
