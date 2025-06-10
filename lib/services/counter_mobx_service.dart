import 'package:mobx/mobx.dart';

class CounterMobxService {
  CounterMobxService() {
    incrementar = Action(_incrementar);
    decrementar = Action(_decrementar);
  }
  final _contador = Observable(0);
  int get contador => _contador.value;
  set contador(int newValue) => _contador.value = newValue;

  late Action incrementar;
  void _incrementar() {
    _contador.value++;
  }
  late Action decrementar;
  void _decrementar() {
    _contador.value--;
  }
}
