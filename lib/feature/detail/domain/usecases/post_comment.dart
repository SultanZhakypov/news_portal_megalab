import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/domain/repositories/comment_repo.dart';

class PostCommentUsecase {
  final CommentRepo commentRepo;

  PostCommentUsecase({required this.commentRepo});

  Future<Either<DioException, Comment>> call(
      {required int id, required String text}) async {
    return await commentRepo.postComment(id: id, text: text);
  }
}

class PostCommentReplyUsecase {
  final CommentRepo commentRepo;

  PostCommentReplyUsecase({required this.commentRepo});

  Future<Either<DioException, Comment>> call(
      {required int id, required String text, required int parent}) async {
    return await commentRepo.postCommentReply(
        id: id, text: text, parent: parent);
  }
}
