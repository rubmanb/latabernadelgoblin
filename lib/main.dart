import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latabernadelgoblin/login/Login.dart';
import 'package:latabernadelgoblin/src/home_page.dart';
import 'package:latabernadelgoblin/src/init_page.dart';
import 'package:latabernadelgoblin/login/register_page.dart';
import 'package:latabernadelgoblin/src/products/cart_counter.dart';
import 'package:latabernadelgoblin/src/products/cart_page.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  if (kDebugMode) {
    print('-- main');
  }

  WidgetsFlutterBinding.ensureInitialized();
  if (kDebugMode) {
    print('-- WidgetsFlutterBinding.ensureInitialized');
  }

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kDebugMode) {
    print('-- main: Firebase.initializeApp');
  }

  runApp(const LaTabernaDelGoblinApp());
  if (kDebugMode) {
    print("conectado a Firebase");
  }
}

class LaTabernaDelGoblinApp extends StatefulWidget {
  const LaTabernaDelGoblinApp({Key? key}) : super(key: key);

  @override
  State<LaTabernaDelGoblinApp> createState() => _LaTabernaDelGoblinAppState();
}

class _LaTabernaDelGoblinAppState extends State<LaTabernaDelGoblinApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartCounterState>(
      create: (_) => CartCounterState(),
      child: MaterialApp(
        title: "La Taberna del Goblín",
        //home: InitPage(),
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color.fromARGB(255, 54, 149, 25),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const InitPage(),
          '/login': (context) => const LoginPage(),
          '/home': (context) => HomePage(),
          '/register': (context) => const RegisterPage(),
          //'/cartPage': (context) => CartPage(),
        },
      ),
    );
  }
}

/*body: StreamBuilder( // -----VER LAS COLECCIONES DE FIRESTORE
          stream:
              FirebaseFirestore.instance.collection('productos').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List<DocumentSnapshot> doc = snapshot.data!.docs;
            return ListView.builder(
              itemCount: doc.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> datos =
                    doc[index].data as Map<String, dynamic>;
                return ListTile(
                  leading: Checkbox(
                    value: datos['nombre'],
                    onChanged: (bool? value) {},
                  ),
                  title: Text(datos['tipo']),
                );
              },
            );
          },
        ),*/