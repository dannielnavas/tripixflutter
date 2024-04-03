import 'package:flutter/material.dart';
import 'package:tripix/card_image.dart';

class CardImageList extends StatelessWidget {
  List<String> pathImages = [
    // Lista de imágenes
    'assets/img/beach.jpeg',
    'assets/img/mountain.jpeg',
    'assets/img/sunset.jpeg',
  ];
  CardImageList(this.pathImages, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: pathImages.map((pathImage) {
          // Se recorre la lista de imágenes
          return CardImage(pathImage);
        }).toList(),
      ),
    );
  }
}
