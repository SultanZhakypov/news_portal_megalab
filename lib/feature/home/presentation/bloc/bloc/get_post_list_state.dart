part of 'get_post_list_bloc.dart';

@freezed
class GetPostListState with _$GetPostListState {
  const factory GetPostListState.initial() = _Initial;
  const factory GetPostListState.success({ required List<HomeEntity> posts}) = _Success;
  const factory GetPostListState.loading() = _Loading;
  const factory GetPostListState.error() = _Error;
}
