import 'package:flutter/material.dart';
import 'package:padilla/inicio.dart';
import 'package:padilla/exito.dart';

void main() => runApp(FormularioEmpleado());

class FormularioEmpleado extends StatelessWidget {
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
  String dropdownpuestos = "Gerente";
// List of items in our dropdown menu
  var items = [
    'Mario Galaxy(CDMX)',
    'Mario Sunshine(Orlando, FL)',
    'Mario Tanookie (Tokyo)',
  ];
  var puestos = [
    "Gerente",
    "Puesto de cocinero",
    "Botones",
    "Recepcionista",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTRO DE EMPLEADOS"),
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
              child: const Text("Bienvenido querido empleado, le pedimos que rellene el formulario con el fin de capturar sus datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("Seleccione la sucursal en la que usted desea trabajar",
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
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "Mariana Castillo", labelText: "Nombre", helperText: "Escriba su nombre ", icon: Icon((Icons.person))),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "25/11/2000", labelText: "Nacimiento", helperText: "Escriba su fecha de nacimiento ", icon: Icon(Icons.today_outlined)),
                )),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("Seleccione su puesto de trabajo solicitado",
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
                  decoration: InputDecoration(border: InputBorder.none, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)), hintText: "Sí/No", labelText: "RFC", helperText: "Cuenta con RFC?", icon: Icon(Icons.today_outlined)),
                )),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("¿Cuánto tardaría en llegar a su sucursal HM?",
                  style: TextStyle(
                    fontFamily: "Roboto",
                  )),
            ),
            ListTile(
              title: Text("Menos de 40 minutos"),
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
              title: Text("Entre 40 minutos a 2 hrs"),
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
              title: Text("Más de 2 horas"),
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
