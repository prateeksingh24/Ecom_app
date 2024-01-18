import 'package:flutter/material.dart';
import 'package:minimal_ecom/pages/intro_page.dart';
import 'package:minimal_ecom/pages/shop_page.dart';
import 'package:minimal_ecom/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const IntroPage(),
      routes: {
        '/intro_page':(context)=>const IntroPage(),
        '/shop_page':(context)=>const ShopPage(),
      },
    );
  }
}

