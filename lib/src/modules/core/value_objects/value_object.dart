import 'package:equatable/equatable.dart';

abstract class ValueObject<T> extends Equatable {
  final T value;
  String? get message;

  bool get isValid => message != null;

  const ValueObject(this.value);

  @override
  List<Object?> get props => [value];
}