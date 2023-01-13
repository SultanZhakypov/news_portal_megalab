part of 'getuser_bloc.dart';

@freezed
class GetuserState with _$GetuserState {
  const factory GetuserState.initial() = _Initial;
  const factory GetuserState.error() = _Error;
  const factory GetuserState.success({required UserEntity user}) = _Success;
  const factory GetuserState.loading() = _Loading;
}
