import 'package:flutter/material.dart';
import 'package:padilla/formularioempleado.dart';
import 'package:padilla/formulariocliente.dart';
import 'package:padilla/main.dart';

//Luis Alberto Padilla González 6J
void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: "INICIO"),
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(
                  'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/elmario.png',
                  height: 50.0,
                ),
                Text("INICIO DE SESIÓN"),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.exit_to_app_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                }),
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.white30), //Change background color from here
            tabs: const [
              Tab(
                text: "Clientes",
                icon: Icon(Icons.home),
              ),
              Tab(text: "Empleados", icon: Icon(Icons.work)),
              Tab(text: "Datos", icon: Icon(Icons.bed)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'Sucursales Hotel Mario',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/florida.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Sunshine',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/CDMX.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Galaxy',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/tokyo.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Tanooki',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Habitaciones disponibles:',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://cf.bstatic.com/xdata/images/hotel/max1024x768/263800242.jpg?k=64e17f553082da505f42fc5af28452caa9793cba367f6bc6e406c2a3900407f3&o=&hp=1',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'M. Koopa',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://cf.bstatic.com/xdata/images/hotel/max1024x768/157467798.jpg?k=f5ee3d2516c7fdcc8009cbd243e2d9398b52a13ef509dcb46c3813cdb8402dda&o=&hp=1',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'M. Koopa',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://ewkvmhgj7nb.exactdn.com/wp-content/uploads/2010/05/economy-hotel-2.jpg?strip=all&lossy=1&resize=500%2C337&ssl=1',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'M. Koopa',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/cuartocafe.PNG',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Normal Toad',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://i0.wp.com/arteyregalosperu.com/wp-content/uploads/2021/09/60x90-cuadro-decorativo-Super-Mario-Bros-3-desktop.jpg?fit=1080%2C1080&ssl=1',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Normal Toad',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://pbs.twimg.com/media/BYqEmRzIgAEDDSV.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Normal Toad',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/habitacion2.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'All-Stars',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///Me quede aqui merengues
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/allstars2.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'All-Stars',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/hotel11.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Normal Toad',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/allstars1.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'All-Stars',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/mk1.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Kingdom',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/mushroomkingdomPORTADA.jpg',
                            width: double.infinity,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Kingdom',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                      child: Text("¡Reservar ahora!"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormularioCliente()),
                        );
                      },
                    )),
              ],
            ),
            ////AQUI EMPIEZA CLIENTES AAAA
            ListView(
              children: [
                Text('GERENTES',
                    style: TextStyle(
                      fontSize: 24,
                    )),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/iwatakun.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Lic. Satoru Iwata',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/miyamoyo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Ing. Shigeru Miyamoto',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/pra.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Lic. Jessica Jones-Taylor',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Text('EMPLEADOS DESTACADOS',
                    style: TextStyle(
                      fontSize: 24,
                    )),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/uffas.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Lic. Alberto Padilla',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/chef.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Lic. Jane Froster',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/eji.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Ing. Eji Aonuma',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/uff.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Ing. María de León',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                      child: Text("Solicitar empleo"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormularioEmpleado()),
                        );
                      },
                    )),
              ],
            ),
            ListView(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'Datos del Desarrollador:',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/WhatsApp%20Image%202022-06-08%20at%207.53.02%20PM.jpeg',
                    width: 252.4,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'Padilla González Luis Alberto',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                  child: Text(
                    'Grupo 6J-B',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                  child: Text(
                    'Desarrolla aplicaciones móviles para Android',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(
                  thickness: 5,
                  indent: 120,
                  endIndent: 120,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'CONCLUSIONES:',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                  child: Text(
                    'Mis conclusiones respecto al proyecto sobre FlutLabes que gracias a la posibilidad de poder realizar un port de mi aplicación respecto a Hotel Mario pero en esta ocasiónen código abierto donde pude llegar a aprender variosmetodosde realizar diferentes acciones, por ejemplo el gridview y poder hacer scroll mi aplicación necesito un list view entre otras actividades que aprendí conforme avanzaba en mi app.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
