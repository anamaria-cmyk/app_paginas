import 'package:app_paginas/enties/persona.dart';
import 'package:flutter/material.dart';

class ZoomScreen extends StatelessWidget {

  final Persona persona;
  
  const ZoomScreen({
    super.key, 
    required this.persona,
  });

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth  = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center( child: Text(persona.nombre),),
        elevation: 2,
        backgroundColor: Colors.purple,
      ),
      body: Image(
        image: NetworkImage(persona.url),
         height: screenHeight,
         width: screenWidth,
        fit: BoxFit.cover,
      ),
    );
  }
}