import 'package:flutter/material.dart';
import 'package:minimal_ecom/componenets/my_button.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: EdgeInsets.only(top: 200,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              //logo
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(
                height: 25,
              ),

              //title
              const Text(
                "Minimal Shop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //subtitle

              Text(
                "Premium Quality Products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //button
              MyButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/shop_page');
                  },
                  child: const Icon(Icons.arrow_forward)),

              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/login_page');
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MyButton(onTap: () {
                    Navigator.pushNamed(context, '/sign_up_page');
                  }, child: const Text("Sign Up",style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),))
                ],
              ),

            ],
          ),

            Column(
              children: [
                const Text("Or via Social Media"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.facebook,
                      mini: true,
                      // Button type for different type buttons
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.twitter,
                      mini: true,
                      // Button type for different type buttons
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.google,
                      mini: true,
                      // Button type for different type buttons
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.github,
                      mini: true,
                      // Button type for different type buttons
                    ),
                  ],
                )
              ],
            ),



          ],
        ),
      ),
    );
  }
}
