part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.success() = _Success;
  const factory RegisterState.error({required String message}) = _Error;
  const factory RegisterState.loading() = _Loading;
}
