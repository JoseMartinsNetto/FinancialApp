import 'value_object.dart';

class Password extends ValueObject<String> {
  const Password(super.value);

  @override
  String? get message => throw UnimplementedError();
}