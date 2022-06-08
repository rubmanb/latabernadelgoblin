import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/body_cart.dart';
import 'package:latabernadelgoblin/src/products/cart.dart';
import 'package:latabernadelgoblin/src/products/cart_btn_check.dart';

class CartPage extends StatelessWidget {
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context),
      body: const BodyCart(),
      bottomNavigationBar: const CartButtonCheck(),
    );
  }

  AppBar BuildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Mi compra",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "${cartList.length} Productos",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(200, 10, 150, 20),
    );
  }
}
