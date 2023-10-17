part of 'transactions_store.dart';

class TransactionsStoreState extends Equatable {
  final TransactionsState state;

  const TransactionsStoreState({
    this.state = const InitialTransactionsState(),
  });

  @override
  List<Object?> get props => [
        state,
      ];
}
