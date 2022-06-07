import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String id = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false; //variable para cargar el inicio de sesion
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
            child: Image.asset(
              'assets/images/logoBase.png',
              height: 200,
            ),
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
                              const InputDecoration(labelText: "Usuario"),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: "Constraseña"),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 70,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(200, 10, 150, 20),
                              onPrimary: Colors.white,
                            ),
                            onPressed: () {
                              _showHomePageLoged(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "Iniciar Sesión",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                /*if (_loading){
                                  Container(
                                    height: 20,
                                    width: 20,
                                    margin: EdgeInsets.only(left:20),
                                    child: CircularProgressIndicator(),
                                  ),
                                },*/
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              '¿No estás registrado?',
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.green,
                                onSurface: Colors.red,
                              ),
                              onPressed: () {
                                _showRegisterPage(context);
                              },
                              child: const Text('Registrarse'),
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

  void _showHomePageLoged(BuildContext context) {
    /*
    crear codigo para comprobar usuario y contraseña validos
    para poder acceder al home page habiendo auntenticado la 
    sesion con el usuario
    */
    _loading = true;
    if (_loading) {
      Navigator.of(context).pushNamed("/home");
    } else {
      /*showAlertDialog(
          barrierDismissible: false,
          builder: (BuildContext context) {
            this.context;
          },
          context: context);*/
    }

    // ignore: unused_element
    void showAlertDialog(
        {required BuildContext context,
        required AlertDialog Function(BuildContext context) builder,
        required bool barrierDismissible}) {
      showAlertDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text("Usuario o la contraseña no coinciden"),
            );
          },
          barrierDismissible: false);
    }
  }

  void _showRegisterPage(BuildContext context) {
    Navigator.of(context).pushNamed("/register");
  }
}
