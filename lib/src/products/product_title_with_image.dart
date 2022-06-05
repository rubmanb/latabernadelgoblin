import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class product_title_with_image extends StatelessWidget {
  const product_title_with_image({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: <Widget>[
          Text(
            product.title,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Precio\n"),
                    TextSpan(
                      text: "${product.price} €",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  product.image,
                  height: 250,
                  width: 100,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
