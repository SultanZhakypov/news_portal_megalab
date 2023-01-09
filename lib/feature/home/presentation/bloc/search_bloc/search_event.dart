part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchPost({required String search,required String tag,required String author}) = _SearchPostEvent;
}