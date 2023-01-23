part of 'comment_reply_bloc.dart';

@freezed
class CommentReplyState with _$CommentReplyState {
  const factory CommentReplyState.initial() = _Initial;
  const factory CommentReplyState.success() = _Success;
  const factory CommentReplyState.error({required String message}) = _Error;
  const factory CommentReplyState.loading() = _Loading;
}
