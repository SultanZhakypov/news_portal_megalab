import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String nickname, password;

  const AuthEntity({
    required this.nickname,
    required this.password,
  });

  @override
  List<Object?> get props => [
        nickname,
        password,
      ];
}
