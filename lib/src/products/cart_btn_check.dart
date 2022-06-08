import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/src/products/cart.dart';
import 'package:latabernadelgoblin/src/products/payment.dart';

class CartButtonCheck extends StatelessWidget {
  const CartButtonCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cart cart;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 174,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15), blurRadius: 20, color: Colors.lightGreen)
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.code_rounded),
              ),
              const Spacer(),
              const Text("Código de Promoción"),
              const SizedBox(width: 10),
              const Icon(Icons.arrow_forward),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(
              text: "Total:\n",
              children: [
                TextSpan(
                  text: "${_costeTotalCompra()} €",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(200, 10, 150, 20),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                _showPaymentPage(context);
              },
              child: const Text(
                "Pagar",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showPaymentPage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
  }

  /* CALCULA EL PRECIO DE LA COMPRA TOTAL
    precio_unidad * la cantidad de unidades comprada de cada producto en la lista
   */
  int _costeTotalCompra() {
    int total = 0;
    int precioUnidad = 0;
    int unidadesTotales = 0;
    for (var i = 0; i < cartList.length; i++) {
      precioUnidad = cartList[i].product.price as int;
      unidadesTotales = cartList[i].numProducts;
      total += (precioUnidad * unidadesTotales);
    }
    return total;
  }
}
