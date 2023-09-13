import 'dart:math';
import 'package:flutter/material.dart';

class Cajita extends StatelessWidget {

  final int posicion;
  Cajita({
    required this.posicion
  });

  @override
  Widget build( BuildContext context ) {
    return Center(
      child: Transform.rotate(
        angle: - pi / 4,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: 80,
          height:80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:const Color.fromARGB(255, 216, 105, 211)
          ),
          child: Center(child: Text('$posicion cajita')),
        ),
      ),
    );
  }
}
