
import 'package:app_paginas/enties/persona.dart';
import 'package:app_paginas/widgets/cajita.dart';
import 'package:app_paginas/widgets/card.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  int cajitas = 0;

  List<Persona> personas = [
    Persona(nombre:'Harry potter' ,   edad:'18' , url:'https://e1.pxfuel.com/desktop-wallpaper/938/213/desktop-wallpaper-daniel-radcliffe-harry-potter-harry-pinterest-harry-james-potter.jpg' ),
    Persona(nombre:'Luna Lovegood',   edad:'16' , url:'https://static.wikia.nocookie.net/esharrypotter/images/4/46/Luna_lovegood.jpg/revision/latest?cb=20150228153823' ),
    Persona(nombre:'Cedric Diggory',  edad:'18' , url:'https://static.wikia.nocookie.net/harrypotter/images/9/90/Cedric_Diggory_Profile.png/revision/latest?cb=20161123045136'),  
    Persona(nombre:'Sirius Black',    edad:'50' , url:'https://static.wikia.nocookie.net/harrypotter/images/d/d3/Sirius1.jpg/revision/latest?cb=20101229150120&path-prefix=ca' ),
    Persona(nombre:'Draco Malfoy',    edad:'19' , url:'https://upload.wikimedia.org/wikipedia/en/thumb/1/16/Draco_Mal.JPG/220px-Draco_Mal.JPG'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
       elevation: 3,
       backgroundColor: Colors.purple,
       title: const Center( child: Text('Pagina 2'),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight* 0.60,
            child: ListView.builder(
              itemCount: cajitas,
              itemBuilder: ( _, index) => Cajita(posicion: index),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 5,
              textColor: const Color.fromARGB(220, 255, 255, 255),
              color: const Color.fromARGB(215, 153, 82, 200),
              child: const Text('Agregar cajita'),
              onPressed: (){ 
                cajitas = cajitas + 1;
                 setState(() {});
              }
            ),
          ),
          SizedBox(
            height: screenHeight * 0.20,
            width: screenWidth,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: personas.length,
              itemBuilder: ( _, index) => Tarjeta(persona: personas[index]),
            ),
          )
        ],
        
      ),
      
    );
  }
}
