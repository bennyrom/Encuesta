import 'package:clase8/preguntas/uno.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Encuesta de Satisfacción al Cliente',
      home: Bienvenida(),
    );
  }
}

class Bienvenida extends StatefulWidget {
  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ENCUESTA DE SATISFACCIÓN"),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Text(
              "responde la siguiente encuesta",
              style: TextStyle(fontSize: 23.0),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
              child: Image.asset(
            'assets/descarga.png',
            height: 120,
          )),
          
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => UNO(),
              ));
            },
            icon: Icon(Icons.bookmark_border),
            label: Text("ir"),
            color: Colors.black,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
