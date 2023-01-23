import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/domain/usecases/post_comment.dart';

part 'comment_reply_event.dart';
part 'comment_reply_state.dart';
part 'comment_reply_bloc.freezed.dart';

class CommentReplyBloc extends Bloc<CommentReplyEvent, CommentReplyState> {
  final PostCommentReplyUsecase postCommentReplyUsecase;
  CommentReplyBloc({required this.postCommentReplyUsecase})
      : super(const _Initial()) {
    on<_PostCommentReplyEvent>((event, emit) async {
      final result = await postCommentReplyUsecase.commentRepo.postCommentReply(
        id: event.id,
        text: event.text,
        parent: event.parent,
      );

      result.fold((l) => emit(_$_Error(message: l.errorMessage)),
          (r) => emit(const _$_Success()));
    });
  }
}
