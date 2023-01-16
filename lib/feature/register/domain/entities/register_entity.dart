class RegisterEntity {
  final int id;
  final String nickname, name, lastName;
  final String? imageProfile;

  const RegisterEntity({
    required this.id,
    required this.nickname,
    required this.name,
    required this.lastName,
     this.imageProfile,
    
  });
}
