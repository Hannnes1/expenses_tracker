enum TransactionsOrder {
  dateDesc('Date ↓'),
  dateAsc('Date ↑'),
  amountDesc('Amount ↓'),
  amountAsc('Amount ↑');

  final String label;

  const TransactionsOrder(this.label);

  static TransactionsOrder fromString(String value) {
    return switch (value) {
      'dateAsc' => TransactionsOrder.dateAsc,
      'dateDesc' => TransactionsOrder.dateDesc,
      'amountAsc' => TransactionsOrder.amountAsc,
      'amountDesc' => TransactionsOrder.amountDesc,
      _ => throw ArgumentError('Invalid value: $value')
    };
  }

  String toString() {
    return super.toString().split('.').last;
  }
}
