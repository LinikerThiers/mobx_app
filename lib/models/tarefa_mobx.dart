import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

// Include generated file
part 'tarefa_mobx.g.dart';

// This is the class used by rest of your codebase
class TarefaMobX = _TarefaMobX with _$TarefaMobX;

abstract class _TarefaMobX with Store {
  final String id = UniqueKey().toString();

  @observable
  String descricao = "";

  @observable
  bool concluido = false;

  _TarefaMobX(this.descricao, this.concluido);

  @action
  alterar(String pDescricao, bool pConcluido){
    descricao = pDescricao;
    concluido = pConcluido;
  }
}
