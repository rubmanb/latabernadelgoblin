import 'package:flutter/cupertino.dart';
import 'package:latabernadelgoblin/src/products/products.dart';

class Description extends StatelessWidget {
  const Description({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Text(
        "${product.descripcion}",
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
