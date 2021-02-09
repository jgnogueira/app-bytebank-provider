import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receber Depósito'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              dica: _dicaCampoValor,
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              onPressed: () => _depositar(context),
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  _depositar(BuildContext context) {
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validarDeposito(valor);

    if (depositoValido) {
      _atualizarEstado(context, valor);
      Navigator.pop(context);
    }
  }

  _validarDeposito(valor) {
    final _campoPreenchido = valor != null;

    return _campoPreenchido;
  }

  _atualizarEstado(context, valor) {
    Provider.of<Saldo>(context, listen: false).adicionar(valor);
  }
}
