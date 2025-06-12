// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_tarefa_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListaTarefaMobX on _ListaTarefaMobX, Store {
  Computed<List<TarefaMobX>>? _$tarefasComputed;

  @override
  List<TarefaMobX> get tarefas =>
      (_$tarefasComputed ??= Computed<List<TarefaMobX>>(() => super.tarefas,
              name: '_ListaTarefaMobX.tarefas'))
          .value;

  late final _$_apenasNaoConcluidosAtom =
      Atom(name: '_ListaTarefaMobX._apenasNaoConcluidos', context: context);

  @override
  Observable<bool> get _apenasNaoConcluidos {
    _$_apenasNaoConcluidosAtom.reportRead();
    return super._apenasNaoConcluidos;
  }

  @override
  set _apenasNaoConcluidos(Observable<bool> value) {
    _$_apenasNaoConcluidosAtom.reportWrite(value, super._apenasNaoConcluidos,
        () {
      super._apenasNaoConcluidos = value;
    });
  }

  late final _$_ListaTarefaMobXActionController =
      ActionController(name: '_ListaTarefaMobX', context: context);

  @override
  void adicionarApenasNaoConcluidos(bool value) {
    final _$actionInfo = _$_ListaTarefaMobXActionController.startAction(
        name: '_ListaTarefaMobX.adicionarApenasNaoConcluidos');
    try {
      return super.adicionarApenasNaoConcluidos(value);
    } finally {
      _$_ListaTarefaMobXActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionar(String descricao) {
    final _$actionInfo = _$_ListaTarefaMobXActionController.startAction(
        name: '_ListaTarefaMobX.adicionar');
    try {
      return super.adicionar(descricao);
    } finally {
      _$_ListaTarefaMobXActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alterar(String id, String descricao, bool concluido) {
    final _$actionInfo = _$_ListaTarefaMobXActionController.startAction(
        name: '_ListaTarefaMobX.alterar');
    try {
      return super.alterar(id, descricao, concluido);
    } finally {
      _$_ListaTarefaMobXActionController.endAction(_$actionInfo);
    }
  }

  @override
  void excluir(String id) {
    final _$actionInfo = _$_ListaTarefaMobXActionController.startAction(
        name: '_ListaTarefaMobX.excluir');
    try {
      return super.excluir(id);
    } finally {
      _$_ListaTarefaMobXActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefas: ${tarefas}
    ''';
  }
}
