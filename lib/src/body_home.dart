import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/categories.dart';
import 'package:latabernadelgoblin/src/products/details.dart';
import 'package:latabernadelgoblin/src/products/itemProducts.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              "Productos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: Product().products_list.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) => itemProducts(
                product: Product().products_list[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: Product().products_list[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
