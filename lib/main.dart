import 'package:flutter/material.dart';
import 'pagina_gridview.dart';
import 'pagina_AnimatedContainer.dart';
import 'pagina_LinearGradient.dart';
import 'pagina_GestureDetectoryInkWell.dart';
import 'pagina_FittedBox.dart';
import 'pagina_Stack.dart';
import 'pagina_Clipper.dart'; // Importa la página Clipper
import 'pagina_ClipRect.dart'; // Importa la página ClipRect

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaPrincipal(),
      routes: {
        '/gridview': (context) => const MyGridView(),
        '/animatedcontainer': (context) => const MyAnimatedContainer(),
        '/lineargradient': (context) => const MyLinearGradient(),
        '/gesture_inkwell': (context) => const MyGestetureNInk(),
        '/fittedbox': (context) => const MyFittedBox(),
        '/stack': (context) => const MyStack(),
        '/clipper': (context) =>
            const MyClipperPage(), // Agrega la ruta para Clipper
        '/cliprect': (context) =>
            const MyClipRect(), // Agrega la ruta para ClipRect
      },
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedcontainer');
              },
              child: const Text('Ir a Pagina AnimatedContainer'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gesture_inkwell');
              },
              child: const Text('Ir a Pagina GestureDetectorInkWell'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fittedbox');
              },
              child: const Text('Ir a Pagina FittedBox'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stack');
              },
              child: const Text('Ir a Pagina Stack'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gridview');
              },
              child: const Text('Ir a Pagina GridView'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lineargradient');
              },
              child: const Text('Ir a Pagina LinearGradient'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/clipper'); // Navega a Clipper
              },
              child: const Text('Ir a Pagina Clipper'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cliprect'); // Navega a ClipRect
              },
              child: const Text('Ir a Pagina ClipRect'),
            ),
          ],
        ),
      ),
    );
  }
}
