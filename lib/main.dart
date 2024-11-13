import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoes_app/resources/app_colors.dart';
import 'package:shoes_app/views/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kBackgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.kBackgroundColor,
            surfaceTintColor: AppColors.kBackgroundColor,
            shadowColor: AppColors.kBackgroundColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
