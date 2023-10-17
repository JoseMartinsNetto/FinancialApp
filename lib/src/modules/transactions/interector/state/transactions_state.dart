import 'package:equatable/equatable.dart';

sealed class TransactionsState extends Equatable {
  const TransactionsState();
}

class InitialTransactionsState extends TransactionsState {
  const InitialTransactionsState();

  @override
  List<Object?> get props => [];
}