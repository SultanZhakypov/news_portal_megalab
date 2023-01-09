part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.postRegister({required RegisterEntity registerEntity}) = _PostRegisterEvent;
}