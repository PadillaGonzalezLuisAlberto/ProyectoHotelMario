import 'package:flutter/material.dart';
import 'package:padilla/main.dart';
import 'package:padilla/inicio.dart';

void main() => runApp(Registrarse());

class Registrarse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROYECTO',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: "REGISTRARSE"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRAR NUEVA CUENTA"),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(children: [
        Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "mariolover@gmail.com", labelText: "Correo", helperText: "Introduzca el gmail que usará su cuenta", icon: Icon(Icons.unsubscribe_outlined)),
            )),
        Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "Charles", labelText: "Usuario", helperText: "Ingrese el usuario que tendrá su cuenta", icon: Icon(Icons.person)),
            )),
        Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nueva contraseña",
                helperText: "Introduzca la contraseña que usará su cuenta",
                icon: Icon(Icons.https_outlined),
              ),
            )),
        Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "18", labelText: "Edad", helperText: "Escriba su edad ", icon: Icon(Icons.today_outlined)),
            )),
        Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "Estados Unidos", labelText: "País", helperText: "Escriba el país donde vive ", icon: Icon(Icons.local_airport_outlined)),
            )),
        Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                  hintText: "Hombre/Mujer/No especifico",
                  labelText: "Genero",
                  helperText: "Mencione su genero", //texto de descripcion
                  icon: Icon(Icons.transgender_outlined)),
            )),
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: ElevatedButton(
              child: Text("Terminar registro"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inicio()),
                );
              },
            )),
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: OutlinedButton(
              child: Text("¿Ya tienes cuenta? Inicia sesión"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            )),
      ])),
    );
  }
}
