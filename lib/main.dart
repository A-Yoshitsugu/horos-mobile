import 'package:flutter/material.dart';


import 'model/product.dart';
import 'model/product_repository.dart';

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
        color: const Color.fromRGBO(255, 255, 255, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            color: Color(int.parse(product.assetColor)),
            width: 3.2,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
           Navigator.pushNamed(context, '/pages/aries.dart');
          } , 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top:6),),
              AspectRatio(
                aspectRatio: 2.0 / 1.0,
                child: Image.asset(
                  product.assetName,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top:1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        product.zodiacJP,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.birth,
                        style: const TextStyle(
                          fontSize: 8,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        /*child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top:6),),
            AspectRatio(
              aspectRatio: 2.0 / 1.0,
              child: Image.asset(
                product.assetName,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top:1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      product.zodiacJP,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.birth,
                      style: const TextStyle(
                        fontSize: 8,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      */);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(71, 107, 149, 1), //背景色
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration (
              //背景画像設定
              image: DecorationImage(
                image: AssetImage('lib/assets/bg_star.png'),
                fit: BoxFit.cover,   
              )
            ),
            child: Center(
              child: GridView.count(
                shrinkWrap: true, //中央寄せ
                crossAxisCount: 3,
                mainAxisSpacing: 28, //縦方向の間隔
                crossAxisSpacing: 16, //縦方向の間隔
                padding: const EdgeInsets.only(left:12, right:12),
                children: _buildGridCards(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//decoration: BoxDecoration ();