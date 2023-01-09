part of 'get_post_list_bloc.dart';

@freezed
class GetPostListEvent with _$GetPostListEvent {
  const factory GetPostListEvent.getPostsEvent() = _GetPostsEvent;
}
