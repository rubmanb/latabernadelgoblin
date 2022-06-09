// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/categories.dart';
import 'package:latabernadelgoblin/src/products/details.dart';
import 'package:latabernadelgoblin/src/products/itemProducts.dart';
import 'package:latabernadelgoblin/src/products/products.dart';
import 'package:provider/provider.dart';

class BodyHome extends StatefulWidget {
  @override
  State<BodyHome> createState() => BodyHomeState();
}

class BodyHomeState extends State<BodyHome> with ChangeNotifier {
  int n_index = 0;

  int getBodyHome() => n_index;

  set setBodyHome(int value) {
    n_index = value;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<int>.value(
      value: n_index,
      child: ColumnBodyHome(context),
    );
  }

  int itemPressed(int numItem) {
    n_index = numItem;
    return n_index;
  }

  Column ColumnBodyHome(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
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
              itemCount: products_list.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) => itemProducts(
                product: products_list[index],
                press: () {
                  /*setState(() {
                    n_index = index;
                  });*/
                  itemPressed(index);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products_list[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
