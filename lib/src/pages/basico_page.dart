import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80"),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  //Para alinear elementos en la columna
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lago con un puente",
                      style: estiloTitulo,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "Un lago en alemania",
                      style: estiloSubTitulo,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
                size: 30.0,
              ),
              Text(
                "41",
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
