import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class Cart {
  final Product product;
  final int numProducts;

  Cart({required this.product, required this.numProducts});
}

List<Cart> cart = [
  Cart(product: products[0], numProducts: 2),
  Cart(product: products[1], numProducts: 1),
  Cart(product: products[2], numProducts: 2),
];
