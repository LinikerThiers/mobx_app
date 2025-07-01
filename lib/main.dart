import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_app/models/lista_tarefa_mobx.dart';
import 'package:mobx_app/my_app.dart';
import 'package:mobx_app/services/counter_mobx_service.dart';

final getIt = GetIt.instance;

setupGetIt() {
  getIt.registerSingleton<CounterMobxService>(CounterMobxService());
  getIt.registerSingleton<ListaTarefaMobX>(ListaTarefaMobX());
}

void main() {
  setupGetIt();
  runApp(const MyApp());
}
