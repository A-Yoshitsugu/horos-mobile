// Fluttee App Demo Code 転用

enum Category {
  all,
}

class Product {
  const Product({
    required this.id,
    required this.zodiacJP,
    required this.zodiac,
    required this.birth,
  });

  final int id;
  final String zodiacJP;
  final String zodiac;
  final String birth;

  String get assetName => '$zodiac.png';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => "$zodiacJP (id=$id)";
}