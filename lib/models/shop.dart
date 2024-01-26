import 'package:flutter/material.dart';
import 'package:minimal_ecom/models/product.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    //product 1
    Product(
        name: "Product 1",
        price: 99.99,
        description:
            "Item Description ,More Description ......................................",
        imagePath:
            "https://m.media-amazon.com/images/I/61Szdu3CaoL._SL1500_.jpg"),
    Product(
        name: "Product 2",
        price: 99.99,
        description:
            "Item Description ,More Description ......................................",
        imagePath:
            "https://m.media-amazon.com/images/I/61BZ1cEl6oL._SL1500_.jpg"),
    Product(
        name: "Product 3",
        price: 99.99,
        description:
            "Item Description ,More Description ......................................",
        imagePath:
            "https://m.media-amazon.com/images/I/71m+EGqdJ0L._SL1500_.jpg"),
    Product(
        name: "Product 4",
        price: 99.99,
        description:
            "Item Description ,More Description ......................................",
        imagePath:
            "https://m.media-amazon.com/images/I/81jO1qR29bL._SL1500_.jpg"),
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
