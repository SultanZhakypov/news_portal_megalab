class UserEntity {
  final int id;
  final String nickname;
  final String name;
  final String lastName;
  final String? image;
  UserEntity({
    required this.id,
    required this.nickname,
    required this.name,
    required this.lastName,
    this.image,
  });
}
