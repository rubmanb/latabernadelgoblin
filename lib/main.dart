import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:latabernadelgoblin/login/Login.dart';
import 'package:latabernadelgoblin/src/body_home.dart';
import 'package:latabernadelgoblin/src/home_page.dart';
import 'package:latabernadelgoblin/src/init_page.dart';
import 'package:latabernadelgoblin/login/register_page.dart';
import 'package:latabernadelgoblin/src/products/add_to_cart.dart';
import 'package:latabernadelgoblin/src/products/cart_counter.dart';
import 'package:latabernadelgoblin/src/products/products.dart';
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
  void initState() {
    super.initState();
    Product().getProductsFromRealtime();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CartCounterState>(create: (_) => CartCounterState()),
        Provider<BodyHomeState>(create: (_) => BodyHomeState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
