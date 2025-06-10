import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/services/counter_mobx_service.dart';

class ContadorMobXPage extends StatelessWidget {
  ContadorMobXPage({super.key});
  final counterMobXService = CounterMobxService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Observer(builder: (context) {
          return Text(
            "${counterMobXService.contador}",
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
                  counterMobXService.decrementar();
                },
                child: Text("Decrementar", style: TextStyle(color: Colors.black, fontSize: 18),)),
            TextButton(
                onPressed: () {
                  counterMobXService.incrementar();
                },
                child: Text("Incrementar", style: TextStyle(color: Colors.black, fontSize: 18),)),
          ],
        )
      ],
    );
  }
}
