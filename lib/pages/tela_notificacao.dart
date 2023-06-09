import 'package:flutter/material.dart';
import 'package:smart_if_app/widgets/lista_notificacao.dart';

class TelaNotificacao extends StatefulWidget {
  const TelaNotificacao({super.key});

  @override
  State<TelaNotificacao> createState() => _TelaNotificacaoState();
}

class _TelaNotificacaoState extends State<TelaNotificacao> {
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
            ListaNotificacao(
              titulo: 'Aprenda como alcançar suas metas com o SmartIF!',
              dateTime: DateTime.now(),
              circleAvatarColor: 0xFF5458F7,
              circleAvatarIcon: Icons.info_outline,
            ),
            ListaNotificacao(
              titulo: 'Fale com o suporte se tiver alguma dúvida.',
              dateTime: DateTime.now(),
              circleAvatarColor: 0xFFF2C94C,
              circleAvatarIcon: Icons.error_outline,
            ),
            ListaNotificacao(
              titulo: 'Cadastro concluído!',
              dateTime: DateTime.now(),
              circleAvatarColor: 0xFF00CC99,
              circleAvatarIcon: Icons.check_circle_outline,
            ),
            ListaNotificacao(
              titulo:
                  'Para utilizar o aplicativo em sua total funcionalidade, cadastre-se.',
              dateTime: DateTime.now(),
              circleAvatarColor: 0xFFEB5757,
              circleAvatarIcon: Icons.cancel_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
