import 'package:flutter/material.dart';

class Tournament extends StatelessWidget {
  const Tournament({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 60),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 10, 150, 20),
                  Color.fromARGB(255, 255, 255, 255),
                ],
              ),
            ),
            child: IconButton(
              icon: const Icon(Icons.games_sharp),
              onPressed: () {},
              iconSize: 90,
            ),
          ),
          SizedBox(
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            height: kToolbarHeight + 25,
          ),
          Transform.translate(
            offset: const Offset(0, -50),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 260),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: "Usuario(*)"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: "Email(*)"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Juego de mesa(*)"),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 70,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(200, 10, 150, 20),
                              onPrimary: Colors.white,
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "Apuntarse",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Los (*) son campos obligatorios',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
