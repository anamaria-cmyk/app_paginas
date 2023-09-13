import 'dart:math';

import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  @override
  Widget build( BuildContext context ) {
    return Transform.rotate(
      angle: -pi / 6,
      child: Container(
        width: 260,
        height:260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(166, 95, 207, 1),
              Color.fromRGBO(104, 32, 138, 1),
            ]
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 59, 142, 236),
              spreadRadius: 3,
              blurRadius: 6
            )
          ]
        ),
      ),
    );
  }
}