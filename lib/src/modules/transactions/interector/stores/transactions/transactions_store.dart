import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:financial_app/src/modules/transactions/interector/entities/transaction_category.dart';
import 'package:flutter/cupertino.dart';

import '../../entities/transaction.dart';
import '../../repositories/transaction_repository.dart';
import '../../state/transactions_state.dart';

part 'transactions_store_state.dart';

class TransactionsStore extends ValueNotifier<TransactionsStoreState> {
  final TransactionRepository _repository;

  TransactionsStore(this._repository) : super(const TransactionsStoreState());

  void fetch() async {
    value = value.copyWith(state: const LoadingTransactionsState());

    final newState = await _repository.fetchTransactions();

    if (newState is SuccessTransactionsState) {
      value = value.copyWith(
        state: newState,
        transactions: newState.transactions,
      );

      return;
    }

    value = value.copyWith(state: newState);
  }
}
