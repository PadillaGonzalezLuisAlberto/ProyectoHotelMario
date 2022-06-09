import 'package:flutter/material.dart';
import 'package:padilla/formularioempleado.dart';
import 'package:padilla/inicio.dart';

void main() => runApp(Exito());

class Exito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROYECTO',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: "EXITO"),
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
          title: Text("FORMULARIO COMPLETADO"),
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
                  child: Text('Su formulario ha sido enviado exitosamente a Hotel Mario',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      )),
                ),
                Image.network(
                  'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/celebration1.gif',
                  fit: BoxFit.cover,
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: OutlinedButton(
                      child: Text("Ir al inicio"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Inicio()),
                        );
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}
