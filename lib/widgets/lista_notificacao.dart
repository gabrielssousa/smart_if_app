import 'package:flutter/material.dart';
import '../models/notificacao.dart';
import 'package:intl/intl.dart';

class ListaNotificacao extends StatefulWidget {
  final Notificacao notificacao;
  final int circleAvatarColor;
  final IconData circleAvatarIcon;

  const ListaNotificacao({
    super.key,
    required this.notificacao,
    required this.circleAvatarColor,
    required this.circleAvatarIcon,
  });

  @override
  State<ListaNotificacao> createState() => _ListaNotificacaoState();
}

class _ListaNotificacaoState extends State<ListaNotificacao> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      background: buildCardDelete(),
      direction: DismissDirection.endToStart,
      child: buildCardNotificacao(),
    );
  }

  Widget buildCardNotificacao() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        color: const Color(0xFF2F3032),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(widget.circleAvatarColor),
            radius: 25.0,
            child: Center(
              child: Icon(
                widget.circleAvatarIcon,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            widget.notificacao.titulo,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            DateFormat('dd/MM/yy').format(widget.notificacao.dateTime),
            style: const TextStyle(
                color: Color(0xFF7E7979),
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget buildCardDelete() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        color: Color(0xFFEB5757),
        child: Align(
          alignment: Alignment(0.8, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.delete,
                color: Colors.white,
              ),
              SizedBox(height: 4.0),
              Text(
                'Deletar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 25.0,
//                   child: Center(
//                     child: Icon(
//                       Icons.info_outline,
//                       size: 30.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 16.0,
//                 ),
//                 Expanded(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         widget.notificacao.titulo,
//                         style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 15.0,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 7.0),
//                       Text(
//                         DateFormat('dd/MM/yy')
//                             .format(widget.notificacao.dateTime),
//                         style: const TextStyle(
//                             color: Color(0xFF7E7979),
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.w500),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),