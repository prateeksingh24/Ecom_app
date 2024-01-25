import 'package:flutter/material.dart';
import 'package:minimal_ecom/componenets/my_drawer.dart';
import 'package:minimal_ecom/componenets/my_product_tile.dart';
import 'package:minimal_ecom/models/product.dart';
import 'package:minimal_ecom/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop Page"),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          //shop title
          Center(
            child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),

          //product subtitle

          //product list
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              padding: EdgeInsets.all(15),
              itemBuilder: (context, index) {
                //get each individual products from shop
                final product = products[index];

                //return as a product title Ui
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
