import 'package:flutter/material.dart';
import 'package:partyapp/boletos.dart';
import 'package:partyapp/home.dart';
import 'package:partyapp/iniciar_sesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party App',
      debugShowCheckedModeBanner: false,
      home: IniciarSesionScreen(),
    );
  }
}
