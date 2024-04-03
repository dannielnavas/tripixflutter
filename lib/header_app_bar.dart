import 'package:flutter/material.dart';
import 'package:tripix/card_image_list.dart';
import 'package:tripix/gradiant_back.dart';

class HeaderAppBar extends StatelessWidget {
  List<String> pathImages = [
    'assets/img/beach.jpeg',
    'assets/img/mountain.jpeg',
    'assets/img/sunset.jpeg',
  ];

  HeaderAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    // el wiget stack permite acomodar los elementos uno sobre otro
    return Stack(
      children: <Widget>[RadiantBack("Bienvenido"), CardImageList(pathImages)],
    );
  }
}
