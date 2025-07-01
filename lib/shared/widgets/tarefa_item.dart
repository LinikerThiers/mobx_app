import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/models/lista_tarefa_mobx.dart';
import 'package:mobx_app/models/tarefa_mobx.dart';

import '../../main.dart';

class TarefaItem extends StatelessWidget {
  final TarefaMobX tarefa;
  const TarefaItem({super.key, required this.tarefa});

  @override
  Widget build(BuildContext context) {
    var listaTarefasMobX = getIt<ListaTarefaMobX>();
    return Observer(builder: (context) {
      return Dismissible(
          onDismissed: (DismissDirection dismissDirection) async {
            listaTarefasMobX.excluir(tarefa.id);
          },
          key: Key(tarefa.id),
          child: ListTile(
            title: Text(tarefa.descricao),
            trailing: Switch(
                value: tarefa.concluido,
                onChanged: (bool value) async {
                  listaTarefasMobX.alterar(tarefa.id, tarefa.descricao, value);
                }),
          ));
    });
  }
}
