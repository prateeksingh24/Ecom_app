import 'package:flutter/material.dart';
import 'package:minimal_ecom/loginPages/sign_up_page.dart';
import 'package:minimal_ecom/models/shop.dart';
import 'package:minimal_ecom/pages/cart_page.dart';
import 'package:minimal_ecom/pages/intro_page.dart';
import 'package:minimal_ecom/loginPages/login_page.dart';
import 'package:minimal_ecom/pages/shop_page.dart';
import 'package:minimal_ecom/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      initialRoute: '/intro_page',
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/login_page': (context)=> const LoginPage(),
        '/sign_up_page': (context)=> const SignUpPage(),

      },
    );
  }
}
