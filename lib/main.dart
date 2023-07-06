import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: GridView.builder(
         shrinkWrap: true, //中央寄せ
          padding: const EdgeInsets.all(20),
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //横に並べる個数
            crossAxisSpacing: 10, //左右の余白
            mainAxisSpacing: 30, //上下の余白
          ), 
          itemBuilder: (context, index) {
            return Container(
              color: Colors.teal,
              child: const Center(
                child: Text("The Zodiac Sign", style: TextStyle(fontSize: 12,),)),
            );
          }
        ),
      ),
    );
  }
}
