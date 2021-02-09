import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(children: <Widget>[
        Align(
          child: SaldoCard(),
          alignment: Alignment.topCenter,
        ),
        Consumer<Saldo>(
          builder: (context, saldo, child) {
            return RaisedButton(
              onPressed: () {
                saldo.adicionar(10.0);
              },
              child: Text('Adicionar'),
            );
          },
        ),
        Consumer<Saldo>(
          builder: (context, saldo, child) {
            return RaisedButton(
              onPressed: () {
                saldo.subtrair(10.0);
              },
              child: Text('Subtrair'),
            );
          },
        ),
      ]),
    );
  }
}
