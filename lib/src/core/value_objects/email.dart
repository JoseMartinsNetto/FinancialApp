import 'value_object.dart';

class Email extends ValueObject<String> {
  const Email(super.value);

  @override
  String? get message {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (value.isEmpty || !regex.hasMatch(value)) {
      return 'E-mail inválido';
    }

    return null;
  }

  String get hidden {
    const emailPattern = r'^(.{1})(.*)(.{1})@(.{1})(.*)(\..+)$';

    return value.replaceAllMapped(RegExp(emailPattern), (match) {
      final prefix = match[1];
      final middle = match[2]?.replaceAll(RegExp(r'.'), '*');
      final suffix = match[3];
      final domainPrefix = match[4];
      final domainSuffix = match[5]?.replaceAll(RegExp(r'.'), '*');
      final domainExtension = match[6];
      return '$prefix$middle$suffix@$domainPrefix$domainSuffix$domainExtension';
    });
  }
}