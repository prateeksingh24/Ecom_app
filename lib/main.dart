import 'package:flutter/material.dart';
import 'package:minimal_ecom/auth/login_auth.dart';
import 'package:minimal_ecom/loginPages/sign_up_page.dart';
import 'package:minimal_ecom/models/shop.dart';
import 'package:minimal_ecom/pages/cart_page.dart';
import 'package:minimal_ecom/loginPages/intro_page.dart';
import 'package:minimal_ecom/loginPages/login_page.dart';
import 'package:minimal_ecom/pages/shop_page.dart';
import 'package:minimal_ecom/themes/light_mode.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      initialRoute: '/loginAuth',
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/login_page': (context)=> const LoginPage(),
        '/sign_up_page': (context)=> const SignUpPage(),
        '/loginAuth' : (context)=> const LoginAuth(),

      },
    );
  }
}
