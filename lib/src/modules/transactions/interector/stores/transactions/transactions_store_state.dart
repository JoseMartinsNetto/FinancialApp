part of 'transactions_store.dart';

class TransactionsStoreState extends Equatable {
  final TransactionsState state;
  final List<Transaction> transactions;

  const TransactionsStoreState({
    this.state = const InitialTransactionsState(),
    this.transactions = const [],
  });

  double get totalTransactionsValue {
    double total = 0;

    for (final transaction in transactions) {
      total += transaction.value;
    }

    return total;
  }

  T printA<T>(T a) {
    // print(a);
    return a;
  }

  List<TransactionCategory> get categoriesGrouped {
    final allCategories =
        transactions.map((e) => e.category.copyWith(value: e.value)).toList();
    final grouped = groupBy(allCategories, (item) => item.id);

    List<TransactionCategory> finalList = [];

    for (final entry in grouped.entries) {
      double value = 0;

      for (final category in entry.value) {
        value += (category.value ?? 0);
      }

      final category = TransactionCategory(
        id: entry.key,
        color: entry.value[0].color,
        name: entry.value[0].name,
        value: value,
      );

      finalList.add(category);
    }

    return finalList;
  }

  TransactionsStoreState copyWith({
    TransactionsState? state,
    List<Transaction>? transactions,
  }) {
    return TransactionsStoreState(
      state: state ?? this.state,
      transactions: transactions ?? this.transactions,
    );
  }

  @override
  List<Object?> get props => [
        state,
        transactions,
      ];
}
