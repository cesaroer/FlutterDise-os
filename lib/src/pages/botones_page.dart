import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [_titulos(), _botonesRedondeados()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            begin: FractionalOffset(1.0, 0.0),
            end: FractionalOffset(0.0, 0.0),
            colors: [
              Color.fromRGBO(241, 142, 172, 1.0),
              Color.fromRGBO(236, 98, 188, 1.0),
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Classify transaction",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Classify this transaction into a particular category",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today, size: 30.0),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bar_chart, size: 40.0),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.person, size: 30.0),
          ),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, "General"),
            _crearBotonRedondeado(
                Colors.purpleAccent, Icons.directions_boat, "Buss"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, "Buy"),
            _crearBotonRedondeado(
                Colors.orange, Icons.insert_drive_file, "Drive"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(
                Colors.blueAccent, Icons.movie_creation, "Entretaiment"),
            _crearBotonRedondeado(Colors.green, Icons.cloud, "Grocery"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(
                Colors.redAccent, Icons.collections, "Photos"),
            _crearBotonRedondeado(Colors.teal, Icons.help, "Help"),
          ],
        )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.70),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, // da espacio entre los elementos
            children: [
              SizedBox(
                height: 1.0,
              ),
              CircleAvatar(
                radius: 35.0, //establece el tamaño del circulo
                backgroundColor: color,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
