part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.success({required bool isLogout}) = _Success;
  const factory LogoutState.loading() = _Loading;
  const factory LogoutState.error() = _Error;
}
