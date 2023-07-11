import 'package:flutter/material.dart';


import 'assets/model/product.dart';
import 'assets/model/product_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Zodiac Signs',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 4, 14, 70)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '星座占い'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Card> _buildGridCards(BuildContext context) {
    List<Product> products = ProductsRepository.loadProducts(Category.all);

    if (products.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);

    return products.map((product) {
      return Card(
        clipBehavior: Clip.antiAlias, //はみ出た画像の切り取り
        // TODO: Adjust card heights (103)
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 2.0 / 1.0,
              child: Image.asset(
                product.assetName,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      product.zodiacJP,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.birth,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: GridView.count(
          shrinkWrap: true, //中央寄せ
          crossAxisCount: 3,
          padding: const EdgeInsets.all(20),
          childAspectRatio: 1.0 / 1.0,
          children: _buildGridCards(context),
        ),
      ),
    );
  }
}
