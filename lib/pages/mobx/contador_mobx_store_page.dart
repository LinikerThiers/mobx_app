import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/services/counter_mobx_store.dart';

class ContadorMobXStorePage extends StatelessWidget {
  ContadorMobXStorePage({super.key});
  final CounterMobXStore countMobXStore = CounterMobXStore();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Observer(builder: (context) {
          return Text(
            "${countMobXStore.contador}",
            style: TextStyle(
              fontSize: 25,
            ),
          );
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  countMobXStore.decrementar();
                },
                child: Text(
                  "Decrementar",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            TextButton(
                onPressed: () {
                  countMobXStore.incrementar();
                },
                child: Text(
                  "Incrementar",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
          ],
        )
      ],
    );
  }
}
