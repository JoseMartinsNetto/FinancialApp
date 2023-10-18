import 'package:financial_app/src/modules/transactions/interector/entities/transaction_category.dart';

class TransactionCategoryAdapter {
  TransactionCategory fromJson(Map<String, dynamic> json) {
    return TransactionCategory(
      id: json['id'],
      color: json['color'],
      name: json['name'],
    );
  }
}
