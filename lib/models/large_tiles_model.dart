import 'package:shoes_app/resources/app_assets.dart';

class LargeTilesModel {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String ratings;
  final String description;

  LargeTilesModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.ratings,
    required this.description,
  });
}

List largeTilesList = [
  LargeTilesModel(
    image: AppAssets.kShoes1,
    title: "Nike Pegasus 39",
    subtitle: "Men's Road Running Shoes",
    price: "128",
    ratings: "5.0 (123 Reviews)",
    description:
        "Let the Nike Pegasus 39 help you ascend to new heights. More lightweight up top than the Pegasus 38 and ideal to wear in any season, it offers a smooth ride with optimal comfort and durability.",
  ),
  LargeTilesModel(
    image: AppAssets.kShoes2,
    title: "Adidas Ultraboost 22",
    subtitle: "Men's Performance Running Shoes",
    price: "180",
    ratings: "4.8 (98 Reviews)",
    description:
        "The Adidas Ultraboost 22 delivers exceptional comfort and energy return with its Boost cushioning. Perfect for high-performance athletes, it ensures a responsive and adaptive fit.",
  ),
  LargeTilesModel(
    image: AppAssets.kShoes3,
    title: "Puma Velocity Nitro 2",
    subtitle: "Men's Lightweight Running Shoes",
    price: "110",
    ratings: "4.5 (76 Reviews)",
    description:
        "The Puma Velocity Nitro 2 is designed to provide a lightweight feel with its Nitro foam midsole. Ideal for runners looking for speed and comfort in their footwear.",
  ),
  LargeTilesModel(
    image: AppAssets.kShoes4,
    title: "Nike Air Zoom Alphafly",
    subtitle: "Men's Racing Shoes",
    price: "275",
    ratings: "4.9 (150 Reviews)",
    description:
        "The Nike Air Zoom Alphafly is engineered for maximum speed and efficiency. With its ZoomX foam and carbon plate, it provides the propulsion needed to push your limits during races.",
  ),
];
