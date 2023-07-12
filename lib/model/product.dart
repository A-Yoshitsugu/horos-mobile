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

  String get assetName => 'lib/assets/zodiac_signs/$zodiac.png';
  String get assetPackage => 'zodiac_signs';

  @override
  String toString() => "$zodiacJP (id=$id)";
}