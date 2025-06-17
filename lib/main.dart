import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_app/my_app.dart';
import 'package:mobx_app/services/counter_mobx_service.dart';


final getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<CounterMobxService>(CounterMobxService());
  runApp(const MyApp());
}
