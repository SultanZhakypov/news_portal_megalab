part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterPostEvent extends RegisterEvent {
  final RegisterEntity registerEntity;

  const RegisterPostEvent({required this.registerEntity});
  @override
  List<Object> get props => [registerEntity];
}
