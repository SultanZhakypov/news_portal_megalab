part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.postRegister({
    required String name,
    required String lastname,
    required String nickname,
    required String password,
    required String password2,
    String? profileImage,
  }) = _PostRegisterEvent;
}