import '../../../core/base/entity/entity.dart';

class TransactionCategory extends Entity {
  final String id;
  final String color;
  final String name;
  final double? value;

  const TransactionCategory({
    required this.id,
    required this.color,
    required this.name,
    this.value,
  });

  TransactionCategory copyWith({
    String? id,
    String? color,
    String? name,
    double? value,
  }) {
    return TransactionCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      value: value ?? this.value,
    );
  }

  @override
  List<Object?> get props => [
        id,
        color,
        name,
        value,
      ];
}
