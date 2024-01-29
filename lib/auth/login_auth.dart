import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:minimal_ecom/loginPages/intro_page.dart';
import 'package:minimal_ecom/loginPages/login_page.dart';
import 'package:minimal_ecom/pages/shop_page.dart';

class LoginAuth extends StatelessWidget {
  const LoginAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // You can return a loading indicator if needed
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // Handle error
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Check if the user is signed in
            final bool isSignedIn = snapshot.hasData && snapshot.data != null;

            if (isSignedIn) {
              // User is signed in, you can navigate to the home page or do other actions
              return const ShopPage(); // Replace with your home screen widget
            } else {
              // User is not signed in, show the login page
              return const IntroPage();
            }
          }
        },
      ),
    );
  }
}
