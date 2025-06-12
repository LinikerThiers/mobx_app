import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/models/lista_tarefa_mobx.dart';

class TarefasPage extends StatelessWidget {
  final descricaoController = TextEditingController();
  final listaTarefasMobX = ListaTarefaMobX();

  TarefasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          descricaoController.text = "";
          showDialog(
              context: context,
              builder: (BuildContext bc) {
                return AlertDialog(
                  title: Text("Adicionar Tarefa"),
                  content: TextField(
                    controller: descricaoController,
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () async {
                          listaTarefasMobX.adicionar(descricaoController.text);
                          Navigator.pop(context);
                        },
                        child: Text("Salvar"))
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Apenas não concluídos",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Observer(builder: (context) {
                        return Switch(
                          value: listaTarefasMobX.apenasNaoConcluidos,
                          onChanged:
                              listaTarefasMobX.adicionarApenasNaoConcluidos,
                        );
                      })
                    ])),
            Expanded(child: Observer(builder: (context) {
              return ListView.builder(
                  itemCount: listaTarefasMobX.tarefas.length,
                  itemBuilder: (BuildContext bc, int index) {
                    var tarefa = listaTarefasMobX.tarefas[index];
                    return Observer(builder: (context) {
                      return Dismissible(
                          onDismissed:
                              (DismissDirection dismissDirection) async {
                            listaTarefasMobX.excluir(tarefa.id);
                          },
                          key: Key(tarefa.id),
                          child: ListTile(
                            title: Text(tarefa.descricao),
                            trailing: Switch(
                                value: tarefa.concluido,
                                onChanged: (bool value) async {
                                  listaTarefasMobX.alterar(
                                      tarefa.id, tarefa.descricao, value);
                                }),
                          ));
                    });
                  });
            }))
          ],
        ),
      ),
    );
  }
}
