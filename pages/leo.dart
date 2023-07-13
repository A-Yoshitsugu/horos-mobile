import 'package:flutter/material.dart';

import '../lib/main.dart';

class AriesPage extends StatelessWidget{
  const AriesPage({super.key});

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