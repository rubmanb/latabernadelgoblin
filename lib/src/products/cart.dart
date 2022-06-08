import 'package:latabernadelgoblin/src/products/products.dart';

class Cart {
  final Product product;
  int numProducts;

  Cart({required this.product, required this.numProducts});
}

List<Cart> cartList = [];
