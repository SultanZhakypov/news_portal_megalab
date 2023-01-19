part of 'like_bloc.dart';

@freezed
class LikeState with _$LikeState {
  const factory LikeState.initial() = _Initial;
  const factory LikeState.success({required List<PostEntity> post}) = _Success;
  const factory LikeState.error({required String message}) = _Error;
  const factory LikeState.loading() = _Loading;
}
