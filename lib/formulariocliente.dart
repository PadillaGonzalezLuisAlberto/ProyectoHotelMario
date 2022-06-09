import 'package:flutter/material.dart';
import 'package:padilla/inicio.dart';
import 'package:padilla/exito.dart';

void main() => runApp(FormularioCliente());

class FormularioCliente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROYECTO',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: "FORMULARIO CLIENTE"),
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
  String? gender;
  String dropdownvalue = 'Mario Galaxy(CDMX)';
  String dropdownpuestos = "Modesty Koopa(40dlls/n)";
// List of items in our dropdown menu
  var items = [
    'Mario Galaxy(CDMX)',
    'Mario Sunshine(Orlando, FL)',
    'Mario Tanookie (Tokyo)',
  ];
  var puestos = [
    "Modesty Koopa(40dlls/n)",
    "Normal Toad(79dlls/n)",
    "All-Star(153dlls/n)",
    "MushroomKingdom(250dlls/n)",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTRO DE CLIENTES"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.keyboard_return_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inicio()),
                  );
                }),
          ],
        ),
        body: Center(
          child: ListView(children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("Amable cliente, rellene el formulario con el fin de capturar su información y tener reservada su habitación",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("Seleccione la sucursal en la que usted desea hospedarse",
                  style: TextStyle(
                    fontFamily: "Roboto",
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("Seleccione La habitación que desea hospedarse",
                  style: TextStyle(
                    fontFamily: "Roboto",
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  // Initial Value
                  value: dropdownpuestos,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: puestos.map((String puestos) {
                    return DropdownMenuItem(
                      value: puestos,
                      child: Text(puestos),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownpuestos = newValue!;
                    });
                  },
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "1", labelText: "Noches", helperText: "La cantidad de noches a hospedarse ", icon: Icon(Icons.mode_night_outlined)),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "1, 2 o 3", labelText: "Huesped", helperText: "Número de huespedes a hospedarse ", icon: Icon(Icons.people_outlined)),
                )),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("¿Cuál Banco usará con el exclusivo fin de pagar la reserva",
                  style: TextStyle(
                    fontFamily: "Roboto",
                  )),
            ),
            ListTile(
              title: Text("Banamex"),
              leading: Radio(
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  }),
            ),
            ListTile(
              title: Text("BBVA"),
              leading: Radio(
                  value: "female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  }),
            ),
            ListTile(
              title: Text("Otro"),
              leading: Radio(
                  value: "other",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  }),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Número de Tarjeta", helperText: "Introduzca su número de tarjeta de credito", icon: Icon(Icons.card_membership_rounded)),
                )),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  child: Text("Guardar Datos"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Exito()),
                    );
                  },
                )),
          ]),
        ));
  }
}
