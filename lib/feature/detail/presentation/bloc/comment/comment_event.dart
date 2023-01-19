part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.postComment(
      {required int id, required String text}) = _PostCommentEvent;
  const factory CommentEvent.getComment({required List<Comment> comments}) =
      _GetCommentEvent;
}
