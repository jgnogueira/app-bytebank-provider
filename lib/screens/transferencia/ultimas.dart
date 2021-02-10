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

          if (_quantidade == 0) {
            return SemTransferenciaCadastrada();
          }
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
          child: Text('Ver Todas Transferências'),
        ),
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Você ainda não cadastrou nenhuma transferência!',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
