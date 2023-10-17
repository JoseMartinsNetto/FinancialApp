import '../../../core/base/entity/entity.dart';

class UserEntity extends Entity {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String userName;
  final String image;
  final double balance;

  String get fullName => '$firstName $lastName';

  const UserEntity.empty()
      : id = '',
        email = '',
        firstName = '',
        lastName = '',
        userName = '',
        image = '',
        balance = 0.0;

  const UserEntity({
    required this.id,
    required this.email,
    required this.image,
    required this.firstName,
    required this.userName,
    required this.lastName,
    required this.balance,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        userName,
        firstName,
        lastName,
        image,
        balance,
      ];
}
