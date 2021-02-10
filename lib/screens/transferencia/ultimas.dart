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
          final _ultimasTransferencias =
              transferencias.transferencias.reversed.toList();
          final _quantidade = transferencias.transferencias.length < 3
              ? transferencias.transferencias.length
              : 2;
          return ListView.builder(
            itemBuilder: (context, indice) {
              return ItemTransferencia(
                  transferencia: _ultimasTransferencias[indice]);
            },
            padding: const EdgeInsets.all(8),
            itemCount: _quantidade,
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
