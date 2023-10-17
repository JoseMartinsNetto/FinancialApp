import '../../../core/base/entity/entity.dart';
import 'transaction_category.dart';

class Transaction extends Entity {
  final double value;
  final String? description;
  final TransactionCategory category;

  const Transaction({
    this.description,
    required this.value,
    required this.category,
  });

  @override
  List<Object?> get props => [description, value, category];
}
