part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.success({ required List<PostEntity> posts}) = _Success;
  const factory SearchState.error({required String message}) = _Error;
  const factory SearchState.loading() = _Loading;
}
