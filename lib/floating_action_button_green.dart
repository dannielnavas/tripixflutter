import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  IconData icon = Icons.favorite_border;
  void onPressedFav() {
    if (icon == Icons.favorite_border) {
      setState(() {
        icon = Icons.favorite;
      });
    } else {
      setState(() {
        icon = Icons.favorite_border;
      });
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Agregar a tus favoritos'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(icon),
    );
  }
}
