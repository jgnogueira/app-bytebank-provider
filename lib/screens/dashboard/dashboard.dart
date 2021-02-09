import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: Align(
        child: SaldoCard(),
        alignment: Alignment.topCenter,
      ),
    );
  }
}
