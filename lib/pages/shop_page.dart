import 'package:flutter/material.dart';
import 'package:minimal_ecom/componenets/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop Page"),
        centerTitle: true,
      ),
      drawer: MyDrawer(),

    );
  }
}
