part of 'put_user_bloc.dart';

@freezed
class PutUserState with _$PutUserState {
  const factory PutUserState.initial() = _Initial;
  const factory PutUserState.success({required String message}) = _Success;
  const factory PutUserState.loading() = _Loading;
  const factory PutUserState.error({required String message}) = _Error;
}
