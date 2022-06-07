// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/login/register_page.dart';
import 'package:latabernadelgoblin/src/body_home.dart';
import 'package:latabernadelgoblin/src/init_page.dart';
import 'package:latabernadelgoblin/src/products/cart_page.dart';
import 'package:latabernadelgoblin/src/products/tournament.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: buildAppBar(context),
      body: BodyHome(),
      drawer: _getDrawer(context),
    );
  }

  //MENU
  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ruben"),
            accountEmail: Text("ruben@ruben.com"),
            currentAccountPicture: FlutterLogo(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
            title: const Text('Inicio'),
            leading: const Icon(Icons.home),
            onTap: () => _showInitPage(context),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
            title: const Text('Productos'),
            leading: const Icon(Icons.shopping_bag),
            onTap: () => _showHomePage(context),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
            title: const Text('Carro de compra'),
            leading: const Icon(Icons.production_quantity_limits_rounded),
            onTap: () => _showCartPage(context),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
            title: const Text('Torneos'),
            leading: const Icon(Icons.tornado_rounded),
            onTap: () => _showTournamentPage(context),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
            title: const Text('Registrarse'),
            leading: const Icon(Icons.app_registration),
            onTap: () => _showRegisterPage(context),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 30),
            title: const Text('Cerrar sesión'),
            leading: const Icon(Icons.close),
            onTap: () => _showHomePage(context),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text("La taberna del goblin"),
      backgroundColor: const Color.fromARGB(200, 10, 150, 20),
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {
            _showCartPage(context);
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}

void _showHomePage(BuildContext context) {
  Navigator.pop(context);
}

void _showInitPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => InitPage()));
}

void _showCartPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
}

void _showTournamentPage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => Tournament()));
}

void _showRegisterPage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => RegisterPage()));
}
