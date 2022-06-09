import 'package:flutter/material.dart';
import 'package:padilla/registrarse.dart';
import 'package:padilla/inicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROYECTO',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: "INICIAR SESION"),
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
        title: Text("INICIO DE SESIÓN"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text('SEA BIENVENIDO A:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    )),
              ),
              Image.network(
                'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/logo.png',
                width: 100,
                height: 90,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Text(
                  'Por favor, coloque sus datos de su cuenta:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Nombre",
                      helperText: "Introduzca su usuario o gmail",
                    ),
                  )),
              Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Contraseña",
                      helperText: "Introduzca su contraseña",
                    ),
                  )),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("Iniciar sesión"),
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
                    child: Text("Registrarse"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registrarse()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
