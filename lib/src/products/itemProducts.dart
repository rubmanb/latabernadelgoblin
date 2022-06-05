import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/details.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class itemProducts extends StatelessWidget {
  final Product product;
  final Function press;

  itemProducts({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* => onTap: press => ...
    press: (context, index) => itemProducts(
        product: products[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: products[index],
            ),
          ),
        ),
      ),
     */
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(
            product:
                products[4], // añadir un index per a la llista de productes
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image), //imatge del cos del producte
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product.title,
              style: const TextStyle(color: Colors.deepOrange),
            ),
          ),
          Text(
            "${product.price} €",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
