import '../../interector/entities/transaction.dart';
import 'transaction_category_adapter.dart';

class TransactionAdapter {
  List<Transaction> listFromJson(List<Map<String, dynamic>> jsonList) {
    return jsonList.map((e) => fromJson(e)).toList();
  }

  Transaction fromJson(Map<String, dynamic> json) {
    return Transaction(
      value: json['value'],
      category: TransactionCategoryAdapter().fromJson(json['category']),
    );
  }
}
