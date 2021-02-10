import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UltimasTransferencias extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Últimas Transferências',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Consumer<Transferencias>(builder: (context, transferencias, child) {
          return ListView.builder(
            itemBuilder: (context, indice) {
              return ItemTransferencia(
                  transferencia: transferencias.transferencias[indice]);
            },
            padding: const EdgeInsets.all(8),
            itemCount: 2,
            shrinkWrap: true,
          );
        }),
        RaisedButton(
          color: Colors.green[900],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ListaTransferencias();
                },
              ),
            );
          },
          child: Text('Transferências'),
        ),
      ],
    );
  }
}
