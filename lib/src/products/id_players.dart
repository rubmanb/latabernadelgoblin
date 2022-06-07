import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class id_players extends StatelessWidget {
  const id_players({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("ID: ${product.id}"),
              Text("${product.type}"),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [TextSpan(text: "Jugadores: ${product.jugadores}")],
            ),
          ),
        ),
      ],
    );
  }
}
