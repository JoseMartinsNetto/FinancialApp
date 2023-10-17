import '../../../core/base/entity/entity.dart';

class TransactionCategory extends Entity {
  final String color;
  final String name;

  const TransactionCategory({
    required this.color,
    required this.name,
  });

  @override
  List<Object?> get props => [color, name];
}
