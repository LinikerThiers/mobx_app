import 'package:mobx/mobx.dart';
import 'package:mobx_app/models/tarefa_mobx.dart';

part 'lista_tarefa_mobx.g.dart';

class ListaTarefaMobX = _ListaTarefaMobX with _$ListaTarefaMobX;

abstract class _ListaTarefaMobX with Store {
  ObservableList<TarefaMobX> _tarefas = ObservableList<TarefaMobX>();

  @computed
  List<TarefaMobX> get tarefas => apenasNaoConcluidos
      ? _tarefas.where((e) => !e.concluido).toList()
      : _tarefas.toList();

  @observable
  var _apenasNaoConcluidos = Observable(false);
  bool get apenasNaoConcluidos => _apenasNaoConcluidos.value;

  @action
  void adicionarApenasNaoConcluidos(bool value) {
    _apenasNaoConcluidos.value = value;
  }

  @action
  void adicionar(String descricao) {
    _tarefas.add(TarefaMobX(descricao, false));
  }

  @action
  void alterar(String id, String descricao, bool concluido) {
    var tarefa = _tarefas.firstWhere((e) => e.id == id);
    tarefa.alterar(descricao, concluido);
  }

  @action
  void excluir(String id) {
    _tarefas.removeWhere((e) => e.id == id);
  }
}
