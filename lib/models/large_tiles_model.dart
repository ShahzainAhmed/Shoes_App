import 'package:shoes_app/resources/app_assets.dart';

class LargeTilesModel {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  LargeTilesModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List largeTilesList = [
  LargeTilesModel(
    image: AppAssets.kShoes1,
    title: "Nike Pegasus 39",
    subtitle: "Men's Road Running Shoes",
    price: "128",
  ),
  LargeTilesModel(
    image: AppAssets.kShoes2,
    title: "Adidas Ultraboost 22",
    subtitle: "Men's Performance Running Shoes",
    price: "180",
  ),
  LargeTilesModel(
    image: AppAssets.kShoes3,
    title: "Puma Velocity Nitro 2",
    subtitle: "Men's Lightweight Running Shoes",
    price: "110",
  ),
  LargeTilesModel(
    image: AppAssets.kShoes4,
    title: "Nike Air Zoom Alphafly",
    subtitle: "Men's Racing Shoes",
    price: "275",
  ),
];
