import 'package:flutter/material.dart';

class RadiantBack extends StatelessWidget {
  const RadiantBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: <double>[0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
