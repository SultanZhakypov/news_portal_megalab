part of 'post_like_cubit.dart';

@freezed
class PostLikeState with _$PostLikeState {
  const factory PostLikeState.initial() = _Initial;
  const factory PostLikeState.success() = _Success;
  const factory PostLikeState.error() = _Error;
}
