part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitialState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  final String message;

  const RegisterSuccessState({required this.message});
  @override
  List<Object> get props => [message];
}

class RegisterErrorState extends RegisterState {
  final String message;

  const RegisterErrorState({required this.message});
  @override
  List<Object> get props => [message];
}
