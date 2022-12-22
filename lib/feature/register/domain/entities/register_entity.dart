import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String nickname, name, lastName, image, password, password2;

  const RegisterEntity({
    required this.nickname,
    required this.name,
    required this.lastName,
    required this.image,
    required this.password,
    required this.password2,
  });

  @override
  List<Object?> get props => [
        nickname,
        name,
        lastName,
        image,
        password,
        password2,
      ];
}
