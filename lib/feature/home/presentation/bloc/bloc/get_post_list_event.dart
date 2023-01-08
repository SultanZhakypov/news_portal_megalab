part of 'get_post_list_bloc.dart';

@freezed
class GetPostListEvent with _$GetPostListEvent {
  const factory GetPostListEvent.getPostsEvent() = _GetPostsEvent;
  const factory GetPostListEvent.searchEvent({required String searchText}) = _SearchEvent;
  const factory GetPostListEvent.filterTagEvent({required String filterTag}) = _FilterTagEvent;
  const factory GetPostListEvent.filterAuthorEvent({required String filterAuthor}) = _FilterAuthorEvent;
}