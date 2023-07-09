// Fluttee App Demo Code 転用

enum Category {
  all,
}

class Product {
  const Product({
    required this.id,
    required this.zodiac,
    required this.birth,
  });

  final int id;
  final String zodiac;
  final String birth;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => "$zodiac (id=$id)";
}