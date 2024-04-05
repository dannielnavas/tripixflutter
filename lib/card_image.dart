// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tripix/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage = 'assets/img/beach.jpeg';
  CardImage(this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
        // Decoración de la imagen
        image: DecorationImage(
          // Imagen de fondo
          fit: BoxFit.cover, // Ajuste de la imagen
          image: AssetImage(pathImage), // Imagen
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(10.0)), // Bordes redondeados
        shape:
            BoxShape.rectangle, // Forma del contenedor en este caso rectangular
        boxShadow: const <BoxShadow>[
          BoxShadow(
            // Sombra
            color: Colors.black38, // Color de la sombra
            blurRadius: 15.0, // Difuminado de la sombra
            offset: Offset(0.0, 7.0), // Desplazamiento de la sombra
          ),
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.2),
      children: [card, const FloatingActionButtonGreen()],
    );
  }
}
