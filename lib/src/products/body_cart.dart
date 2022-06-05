import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/cart.dart';
import 'package:latabernadelgoblin/src/products/cart_list.dart';

class BodyCart extends StatefulWidget {
  const BodyCart({Key? key}) : super(key: key);

  @override
  State<BodyCart> createState() => _BodyCartState();
}

class _BodyCartState extends State<BodyCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) => Dismissible(
            key: Key(cart[0].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: const [
                  Spacer(),
                  Icon(Icons.remove_shopping_cart),
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                cart.removeAt(index);
              });
            },
            child: cart_list(cart: cart[index])),
      ),
    );
  }
}
