// ignore_for_file: use_key_in_widget_constructors

import 'package:app_paginas/screens/screen2.dart';
import 'package:app_paginas/widgets/box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Screen2() ) );
            }, 
            icon: const Icon( Icons.star_border )
          )
        ],
        elevation: 4,
        backgroundColor: Colors.purple,
        title: const Center(child: Text('Pagina 1')),
      ),
      body: Center(
        child: Box()
      ),
    );
  }
}
