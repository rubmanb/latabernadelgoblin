import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/cart.dart';
import 'package:latabernadelgoblin/src/products/cart_counter.dart';
import 'package:latabernadelgoblin/src/products/cart_list.dart';
import 'package:latabernadelgoblin/src/products/cart_page.dart';
import 'package:latabernadelgoblin/src/products/products.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.white),
            ),
            child: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(200, 10, 150, 20),
                  onPrimary: Colors.white,
                ),
                //añade el producto a la lista del carrito (cart)
                onPressed: () {
                  addProductToCart();
                },
                child: const Text(
                  "Comprar",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //metodo para añadir productos al carrito
  addProductToCart() {
    cartList.add(Cart(
        product: products_list[1],
        numProducts: CartCounterState().getNumProduct()));
    print("Se ha añadido un producto a la lista");
  }

  /*int numItems() {
    int numItem;
    numItem = Provider<int>.value(
      value: CartCounterState().countItems,
    ) as int;
    return numItem;
  }*/
}
