part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}


class AuthPostEvent extends AuthEvent {
  final AuthEntity authEntity;

  const AuthPostEvent({required this.authEntity});
  @override
  List<Object> get props => [authEntity];
}

