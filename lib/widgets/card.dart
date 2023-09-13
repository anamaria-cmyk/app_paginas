// ignore_for_file: must_be_immutable

import 'package:app_paginas/enties/persona.dart';
import 'package:app_paginas/screens/screen3.dart';
import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget {
  Persona persona;
  Tarjeta({
    super.key, 
    required this.persona
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ZoomScreen(persona: persona)
          )
        );
      },
      child: Card(
        child: Column(
          children:[
            Image(
              image: NetworkImage(persona.url),
              height: 120,
              width: 120,
              fit: BoxFit.contain,
            ),
            Text(persona.nombre),
            Text(persona.edad)
          ],
        ),
      ),
    );
  }
}