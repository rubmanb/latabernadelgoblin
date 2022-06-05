import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => CartCounterState();
}

class CartCounterState extends State<CartCounter> with ChangeNotifier {
  int countItems = 1;

  int get CartCounter => countItems;

  set CartCounter(int value) {
    countItems = value;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<int>.value(
      value: countItems,
      child: buttonsCountProduct(),
    );
  }

  Row buttonsCountProduct() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
          height: 32,
          child: FloatingActionButton(
            onPressed: () {
              _decrementCounter();
              //getNumProduct();
            },
            child: const Icon(Icons.remove),
            backgroundColor: Colors.green,
            heroTag: null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(countItems.toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 20,
              )),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: FloatingActionButton(
            onPressed: () {
              _incrementCounter();
              //getNumProduct();
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.green,
            heroTag: null,
          ),
        ),
      ],
    );
  }

  void _incrementCounter() {
    setState(() {
      countItems++;
    });
  }

  void _decrementCounter() {
    setState(() {
      countItems--;
    });
  }

  /*int getNumProduct() {
    if (kDebugMode) {
      print("Has elegido: ${countItems} productos");
    }
    return countItems;
  }*/
}
