import 'package:financial_app/src/modules/transactions/interector/state/transactions_state.dart';

abstract interface class TransactionRepository {
  Future<TransactionsState> fetchTransactions();
}
