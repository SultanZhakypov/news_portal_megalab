import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/domain/usecases/post_comment.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final PostCommentUsecase postCommentUsecase;
  CommentBloc({required this.postCommentUsecase}) : super(const _Initial()) {
    on<_PostCommentEvent>((event, emit) async {
      final result = await postCommentUsecase.commentRepo
          .postComment(id: event.id, text: event.text);

      result.fold((failure) => emit(const _$_Error()),
          (comment) => emit(_$_Success(comment: comment)));
    });
  }
}
