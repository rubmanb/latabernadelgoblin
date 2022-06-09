import 'package:firebase_database/firebase_database.dart';

class Product {
  final String? image, title, descripcion, name, type, jugadores, id, stock;
  final int? price;

  final dbRef = FirebaseDatabase.instance.ref();

  Product(
      {this.image,
      this.title,
      this.descripcion,
      this.name,
      this.type,
      this.price,
      this.stock,
      this.id,
      this.jugadores});

  var items = [];

  /*
    Recoge los datos de Realtime DB y los devuelve como una lista Object de la clase
   */
  List<Product> getProductsFromRealtime() {
    dbRef.child("Products").once().then((value) {
      //print(value.snapshot.value);

      //Cojo los valores(datos) de la base de datos
      List items = value.snapshot.value as List;

      //print(items);
      // Recorro el json y los voy añadiendo a la lista
      if (items != null) {
        items.forEach((item) {
          if (item != null) {
            /*Sprint("Titulo\n");
            print(item["titulo"].runtimeType);
            print("ID\n");
            print(item["id"].runtimeType);
            print("Name\n");
            print(item["nombre"]);
            print("Type\n");
            print(item["tipo"]);
            print("Precio\n");
            print(item["precio"].runtimeType);
            print("Descripcion\n");
            print(item["descripcion"].runtimeType);
            print("Jugadores\n");
            print(item["jugadores"].runtimeType);
            print("Stock\n");
            print(item["stock"].runtimeType);
            print("Imagen\n");
            print(item["imagen"]
                .runtimeType);*/ // Millor alguna d'Internet, no de assets

            products_list.add(Product(
                image: item["imagen"],
                title: item["titulo"],
                descripcion: item["descripcion"],
                name: item["nombre"],
                type: item["tipo"],
                price: item["precio"] as int,
                stock: item["stock"],
                id: item["id"],
                jugadores: item["jugadores"]));
          }

          ///print(products_list.length);
        });
      }
    });
    print("Se han insertado los datos de la BD a la lista correctamente");
    return products_list;
  }
}

List<Product> products_list = [];
