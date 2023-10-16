import '../../../core/entity/entity.dart';

class UserEntity extends Entity {
  final String id;
  final String email;
  final String userName;
  final String image;

  const UserEntity.empty()
      : id = '',
        email = '',
        userName = '',
        image = '';

  const UserEntity({
    required this.id,
    required this.email,
    required this.image,
    required this.userName,
  });

  @override
  List<Object?> get props => [id, email, userName, image];
}
