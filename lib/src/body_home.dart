// ignore_for_file: prefer_const_constructors

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
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) => itemProducts(
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
            ),
          ),
        ),
      ],
    );
  }
}