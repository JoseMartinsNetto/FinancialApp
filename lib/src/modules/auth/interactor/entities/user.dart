import '../../../core/entity/entity.dart';

class UserEntity extends Entity {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String userName;
  final String image;

  String get fullName => '$firstName $lastName';

  const UserEntity.empty()
      : id = '',
        email = '',
        firstName = '',
        lastName = '',
        userName = '',
        image = '';

  const UserEntity({
    required this.id,
    required this.email,
    required this.image,
    required this.firstName,
    required this.userName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        userName,
        image,
      ];
}
