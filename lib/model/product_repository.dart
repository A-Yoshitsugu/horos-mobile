
import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        id: 0,
        zodiacJP: '牡羊座',
        zodiac: 'aries',
        birth: "(03/21 ~ 04/19)",
      ),
      Product(
        id: 1,
        zodiacJP: '牡牛座',
        zodiac: 'taurus',
        birth: "(04/20 ~ 05/20)",
      ),
      Product(
        id: 2,
        zodiacJP: '双子座',
        zodiac: 'gemini',
        birth: "(05/21 ~ 06/20)",
      ),
      Product(
        id: 3,
        zodiacJP: '蟹座',
        zodiac: 'cancer',
        birth: "(06/21 ~ 07/22)",
      ),
      Product(
        id: 4,
        zodiacJP: '獅子座',
        zodiac: 'leo',
        birth: "(07/23 ~ 08/22)",
      ),
      Product(
        id: 5,
        zodiacJP: '乙女座',
        zodiac: 'virgo',
        birth: "(08/23 ~ 09/22)",
      ),
      Product(
        id: 6,
        zodiacJP: '天秤座',
        zodiac: 'libra',
        birth: "(09/23 ~ 10/22)",
      ),
      Product(
        id: 7,
        zodiacJP: '蠍座',
        zodiac: 'scorpius',
        birth: "(10/23 ~ 11/21)",
      ),
      Product(
        id: 8,
        zodiacJP: '射手座',
        zodiac: 'sagittarius',
        birth: "(11/22 ~ 12/21)",
      ),
      Product(
        id: 9,
        zodiacJP: '山羊座',
        zodiac: 'capricornus',
        birth: "(12/22 ~ 01/19)",
      ),
      Product(
        id: 10,
        zodiacJP: '水瓶座',
        zodiac: 'aquarius',
        birth: "(01/20 ~ 02/18)",
      ),
      Product(
        id: 11,
        zodiacJP: '魚座',
        zodiac: 'pisces',
        birth: "(02/19 ~ 03/20)",
      ),
    ];
    return allProducts;
  }
}