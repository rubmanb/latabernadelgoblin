import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: const EdgeInsets.all(0),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed:
                () {}, //programar el que pasa quan pulsem el botó de favorit
          ),
        ),
      ],
    );
  }
}
