import 'package:flutter/material.dart';
import 'package:minimal_ecom/models/product.dart';
import 'package:minimal_ecom/models/shop.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  //add To Cart Button pressed

  void addToCart(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Add this item to your cart?"),
              actions: [
                MaterialButton(
                  //cancel button
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),

                //yes Button

                MaterialButton(
                  onPressed: () {
                    //pop dialog box
                    Navigator.pop(context);

                    //add to cat

                    context.read<Shop>().addToCart(product);
                  },
                  child: Text("Yes"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    child: Image.network(product.imagePath)),
              ),
              const SizedBox(
                height: 25,
              ),

              //product name
              Text(
                product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //product description

              const SizedBox(
                height: 10,
              ),

              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),

          //product price+add to cart button
          const SizedBox(
            height: 25,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //product price
              Text('\$' + product.price.toStringAsFixed(2)),

              //add to cart button
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.secondary),
                child: IconButton(
                    onPressed: () => addToCart(context), icon: Icon(Icons.add)),
              )
            ],
          )
        ],
      ),
    );
  }
}
