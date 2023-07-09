
import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        id: 0,
        zodiac: 'Vagabond sack',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 1,
        zodiac: 'Stella sunglasses',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 2,
        zodiac: 'Whitney belt',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 3,
        zodiac: 'Garden strand',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 4,
        zodiac: 'Strut earrings',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 5,
        zodiac: 'Varsity socks',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 6,
        zodiac: 'Weave keyring',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 7,
        zodiac: 'Gatsby hat',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 8,
        zodiac: 'Shrug bag',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 9,
        zodiac: 'Gilt desk trio',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 10,
        zodiac: 'Copper wire rack',
        birth: "(03/21 ~ 04/20)",
      ),
      Product(
        id: 11,
        zodiac: 'Soothe ceramic set',
        birth: "(03/21 ~ 04/20)",
      ),
    ];
    return allProducts;
  }
}