extension DoubleExtension on double {
  String toCurrency() {
    return 'R\$ ${toStringAsFixed(2).replaceFirst(".", ",")}';
  }
}
