import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  // Clase principal
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! AppBar
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      //! GridView
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
        ),
        itemCount: 10, // 10 elementos
        //! itemBuilder
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              // Borde redondeado
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.purple[300], // Color de cada celda
              ),
            ),
          );
        },
      ),
    );
  }
}
