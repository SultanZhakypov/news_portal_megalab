part of 'global_cubit.dart';




@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState.loading() = _GlobalState;
  const factory GlobalState.authorized() = _Authorized;
  const factory GlobalState.unauthorized() = _UnAuthorized;
}
