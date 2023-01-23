part of 'comment_reply_bloc.dart';

@freezed
class CommentReplyEvent with _$CommentReplyEvent {
  const factory CommentReplyEvent.postCommentReply({required int id,required String text,required int parent}) = _PostCommentReplyEvent;
}