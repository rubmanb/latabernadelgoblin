import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/add_to_cart.dart';
import 'package:latabernadelgoblin/src/products/counter_with_fav_btn.dart';
import 'package:latabernadelgoblin/src/products/description.dart';
import 'package:latabernadelgoblin/src/products/id_players.dart';
import 'package:latabernadelgoblin/src/products/product_title_with_image.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class BodyProduct extends StatelessWidget {
  final Product product;
  const BodyProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  padding: EdgeInsets.only(
                      top: size.height * 0.2, left: 20, right: 20),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      id_players(product: product),
                      Description(product: product),
                      const CounterWithFavBtn(),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                product_title_with_image(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
