import 'package:flutter/material.dart';
import 'package:smart_if_app/pages/home_page.dart';
import 'package:smart_if_app/pages/tela_notificacao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaNotificacao(),
      debugShowCheckedModeBanner: false,
    );
  }
}
