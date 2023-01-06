class RegisterEntity {
  final String nickname, name, lastName, password, password2;
  final String? imageProfile;

  const RegisterEntity({
    required this.nickname,
    required this.name,
    required this.lastName,
    required this.imageProfile,
    required this.password,
    required this.password2,
  });
}
