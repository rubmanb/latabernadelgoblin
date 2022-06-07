import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/body_product.dart';
import 'package:latabernadelgoblin/src/products/cart_page.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: buildAppBar(context),
      body: BodyProduct(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("${product.name}"),
      backgroundColor: const Color.fromARGB(200, 10, 150, 20),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartPage()));
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
    );
  }

  void _showCartPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartPage()));
  }
}
