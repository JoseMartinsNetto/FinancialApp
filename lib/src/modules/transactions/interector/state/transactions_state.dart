import 'package:equatable/equatable.dart';

import '../entities/transaction.dart';

sealed class TransactionsState extends Equatable {
  const TransactionsState();

  @override
  List<Object?> get props => [];
}

class InitialTransactionsState extends TransactionsState {
  const InitialTransactionsState();
}

class LoadingTransactionsState extends TransactionsState {
  const LoadingTransactionsState();
}

class SuccessTransactionsState extends TransactionsState {
  final List<Transaction> transactions;

  const SuccessTransactionsState(this.transactions);
}

class FailureTransactionsState extends TransactionsState {
  final String message;

  const FailureTransactionsState(this.message);
}
