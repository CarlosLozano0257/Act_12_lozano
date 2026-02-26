import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "pagina 3 Gameshop",
          style: TextStyle(color: Colors.white), // Texto blanco
        ),
        backgroundColor: Colors.red, // Fondo rojo
        // Cambiamos la flecha de regresar a color blanco para que combine
        iconTheme: const IconThemeData(color: Colors.white), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Este es el cuadrito en medio de la pantalla
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white, // Fondo blanco para que resalten las letras rojas
                border: Border.all(color: Colors.red, width: 2), // Borde rojo
                borderRadius: BorderRadius.circular(15), // Bordes un poco redondeados
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // El icono pequeño color rojo
                  Icon(
                    Icons.star, // Puedes cambiar "star" por otro icono si prefieres
                    color: Colors.red,
                    size: 40,
                  ),
                  SizedBox(height: 10), // Espacio entre el icono y el texto
                  // El texto color rojo
                  Text(
                    "pagina 3",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Dejé el botón para que puedas regresar al inicio fácilmente
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text("Volver al Inicio"),
            ),
          ],
        ),
      ),
    );
  }
}