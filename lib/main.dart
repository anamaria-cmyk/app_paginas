import 'package:app_paginas/screens/home_screen.dart';
import 'package:app_paginas/screens/screen2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_sreen',
      routes: {
       'home_sreen': ( _ ) => HomeScreen(),
       'scree_2'   : ( _ ) => Screen2()
      }
    );
  }
}
