part of 'getposts_bloc.dart';

@freezed
class GetpostsState with _$GetpostsState {
  const factory GetpostsState.initial() = _Initial;
  const factory GetpostsState.success({required List<PostEntity> post}) = _Success;
  const factory GetpostsState.error() = _Error;
  const factory GetpostsState.loading() = _Loading;
}
