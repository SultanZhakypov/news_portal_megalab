part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.success({required List<Comment> comment}) = _Success;
  const factory CommentState.error({required String message}) = _Error;
  const factory CommentState.loading() = _Loading;
}
