import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../models/notificacao.dart';
import 'package:intl/intl.dart';

class ListaNotificacao extends StatefulWidget {
  final Notificacao notificacao;
  final Function(Notificacao) deletarNotificao;

  const ListaNotificacao(
      {super.key, required this.notificacao, required this.deletarNotificao});

  @override
  State<ListaNotificacao> createState() => _ListaNotificacaoState();
}

class _ListaNotificacaoState extends State<ListaNotificacao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.22,
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              onPressed: (value) {
                widget.deletarNotificao(widget.notificacao);
              },
              autoClose: true,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(4.0),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Deletar',
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 242, 245),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.warning,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.notificacao.titulo,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            DateFormat('dd/MM/yy')
                                .format(widget.notificacao.dateTime),
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
