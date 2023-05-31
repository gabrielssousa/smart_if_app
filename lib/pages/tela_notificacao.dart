import 'package:flutter/material.dart';
import 'package:smart_if_app/widgets/lista_notificacao.dart';
import '../models/notificacao.dart';

class TelaNotificacao extends StatefulWidget {
  const TelaNotificacao({super.key});

  @override
  State<TelaNotificacao> createState() => _TelaNotificacaoState();
}

class _TelaNotificacaoState extends State<TelaNotificacao> {
  List<Notificacao> notificacoes = [
    Notificacao(
        titulo: 'Aprenda como alcançar suas metas com o SmartIF!',
        dateTime: DateTime.now()),
    Notificacao(
        titulo: 'Simplifique sua rotina diária de treinos!',
        dateTime: DateTime.now()),
    Notificacao(
        titulo: 'Você sabe quanto está gastando na sua dieta?',
        dateTime: DateTime.now()),
    Notificacao(
        titulo: 'Fale com o suporte se tiver alguma dúvida.',
        dateTime: DateTime.now()),
  ];

  void deletarNotificacao(Notificacao notificacao) {
    setState(() {
      notificacoes.remove(notificacao);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1B1B1B),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Notificações',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          children: [
            for (Notificacao notificacao in notificacoes)
              ListaNotificacao(
                notificacao: notificacao,
                deletarNotificao: deletarNotificacao,
              ),
          ],
        ),
      ),
    );
  }
}