import 'package:financial_app/src/modules/core/base/interector/repositories/base_repository.dart';
import 'package:financial_app/src/modules/transactions/data/adapters/transaction_adapter.dart';
import 'package:financial_app/src/modules/transactions/interector/repositories/transaction_repository.dart';
import 'package:financial_app/src/modules/transactions/interector/state/transactions_state.dart';

class TransactionRepositoryImpl extends BaseRepository
    implements TransactionRepository {
  TransactionRepositoryImpl(super.firestore)
      : super(collectionName: '/transactions');

  @override
  Future<TransactionsState> fetchTransactions() async {
    try {
      final collection = await getSnapshot();
      final docs =
          collection.docs.map((e) => e.data() as Map<String, dynamic>).toList();

      return SuccessTransactionsState(TransactionAdapter().listFromJson(docs));
    } catch (error) {
      return FailureTransactionsState(error.toString());
    }
  }
}
