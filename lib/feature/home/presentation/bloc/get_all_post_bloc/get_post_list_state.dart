part of 'get_post_list_bloc.dart';

@freezed
class GetPostListState with _$GetPostListState {
  const factory GetPostListState.initial() = _Initial;
  const factory GetPostListState.success({ required List<PostEntity> posts}) = _Success;
  const factory GetPostListState.loading() = _Loading;
  const factory GetPostListState.error({required String message}) = _Error;
}
