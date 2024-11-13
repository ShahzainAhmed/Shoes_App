import 'package:shoes_app/resources/app_assets.dart';

class CategoriesModel {
  final String image;

  CategoriesModel({required this.image});
}

List categoriesList = [
  CategoriesModel(image: AppAssets.kLogo1),
  CategoriesModel(image: AppAssets.kLogo2),
  CategoriesModel(image: AppAssets.kLogo3),
  CategoriesModel(image: AppAssets.kLogo4),
  CategoriesModel(image: AppAssets.kLogo5),
];
