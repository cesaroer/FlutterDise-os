import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
      ],
    ));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80"),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: [
          //Expanded es hacer que los elementos tomen el espacio disponible
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
    );
  }

  Widget _crearAcciones() {
    //Main axis en un row es la forma de como se ordenan de manera horizontal
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, "CALL"),
        _accion(Icons.near_me, "ROUTE"),
        _accion(Icons.share, "SHARE"),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      child: Text(
        "Commodo quis ad elit dolore nisi laborum incididunt nostrud dolor id do aliqua elit. Minim amet culpa dolor qui commodo culpa culpa aliquip ipsum eu pariatur dolor do. Sint magna incididunt ullamco anim ut laborum Lorem elit et nisi. Sint Lorem qui Lorem cupidatat sint velit labore in laboris occaecat aliqua reprehenderit fugiat. Adipisicing dolore velit nostrud magna ipsum elit anim velit. Amet proident officia laboris irure ex magna officia occaecat irure excepteur officia elit eiusmod voluptate. Adipisicing occaecat Lorem pariatur et deserunt aute eiusmod veniam elit.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}
