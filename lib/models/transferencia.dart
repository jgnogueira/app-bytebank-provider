class Transferencia {
  final double valorTransferencia;
  final int numeroConta;

  Transferencia(
    this.valorTransferencia,
    this.numeroConta,
  );

  String toStringValor() {
    return 'R\$ $valorTransferencia';
  }

  String toStringConta() {
    return '$numeroConta';
  }
}
