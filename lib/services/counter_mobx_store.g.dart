// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_mobx_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterMobXStore on _CounterMobXStore, Store {
  late final _$contadorAtom =
      Atom(name: '_CounterMobXStore.contador', context: context);

  @override
  int get contador {
    _$contadorAtom.reportRead();
    return super.contador;
  }

  @override
  set contador(int value) {
    _$contadorAtom.reportWrite(value, super.contador, () {
      super.contador = value;
    });
  }

  late final _$_CounterMobXStoreActionController =
      ActionController(name: '_CounterMobXStore', context: context);

  @override
  void incrementar() {
    final _$actionInfo = _$_CounterMobXStoreActionController.startAction(
        name: '_CounterMobXStore.incrementar');
    try {
      return super.incrementar();
    } finally {
      _$_CounterMobXStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementar() {
    final _$actionInfo = _$_CounterMobXStoreActionController.startAction(
        name: '_CounterMobXStore.decrementar');
    try {
      return super.decrementar();
    } finally {
      _$_CounterMobXStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contador: ${contador}
    ''';
  }
}
