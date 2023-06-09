import 'package:flutter/material.dart';
import 'package:smart_if_app/pages/home_page.dart';
import 'package:smart_if_app/pages/tela_equipamentos.dart';
import 'package:smart_if_app/pages/tela_notificacao.dart';
import 'package:smart_if_app/pages/tela_treinos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/notificacao': (context) => const TelaNotificacao(),
        '/equipamentos': (context) => const TelaEquipamentos(),
        '/treinos': (context) => WorkoutPage(),
      },
    );
  }
}
