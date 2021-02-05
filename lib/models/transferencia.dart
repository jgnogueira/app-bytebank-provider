class Transferencia {
  final double valorTransferencia;
  final int numeroConta;

  Transferencia(
    this.valorTransferencia,
    this.numeroConta,
  );

  @override
  String toString() {
    return 'Transferencia: {valor: $valorTransferencia, numeroConta: $numeroConta}';
  }
}
