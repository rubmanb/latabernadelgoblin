import 'package:latabernadelgoblin/src/products/products.dart';

class Cart {
  final Product product;
  final int numProducts;

  Cart({required this.product, required this.numProducts});
}

List<Cart> cart = [
  Cart(product: Product().products_list[0], numProducts: 2),
  Cart(product: Product().products_list[1], numProducts: 1),
  Cart(product: Product().products_list[2], numProducts: 2),
];
