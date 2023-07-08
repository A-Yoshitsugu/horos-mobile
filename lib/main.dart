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

        child: GridView.count(
          shrinkWrap: true, //中央寄せ
          crossAxisCount: 3,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1/1,
                    child: Image.asset("assets/zodiac_signs/leo.png"),
                    ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("The Zodiac Sign", style: TextStyle(fontSize: 14),),
                        SizedBox(height: 8,),
                        Text("Birth", style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  )
                ],
              ),
          )],
        ),
      ),
    );
  }
}
