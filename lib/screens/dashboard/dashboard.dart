import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FormularioDeposito();
                    },
                  ),
                );
              },
              child: Text('Receber Depósito'),
            );
          },
        ),
      ]),
    );
  }
}
