import 'value_object.dart';

class Email extends ValueObject<String> {
  const Email(super.value);

  @override
  String? get message => throw UnimplementedError();
}