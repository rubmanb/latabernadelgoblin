import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/cart.dart';

class cart_list extends StatelessWidget {
  const cart_list({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 244, 99),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("${cart.product.image}"),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${cart.product.title}",
              style: const TextStyle(fontSize: 20),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                text: "${cart.product.price} €\n",
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 22, 83, 215),
                ),
                children: [
                  TextSpan(
                    text: "Cantidad: ${cart.numProducts}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 22, 83, 215),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
