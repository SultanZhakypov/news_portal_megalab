import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/detail/data/datasources/remote_comment.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/domain/repositories/comment_repo.dart';

class CommentRepoImpl implements CommentRepo {
  final RemoteComment remoteComment;

  CommentRepoImpl({required this.remoteComment});

  @override
  Future<Either<DioException, CommentModel>> postComment(
      {required int id, required String text}) async {
    try {
      final result = await remoteComment.postComment(id: id, text: text);
      return Right(result);
    } on DioError catch (e) {
      return Left(DioException.fromDioError(e));
    }
  }

  @override
  Future<Either<DioException, Comment>> postCommentReply({
    required int id,
    required String text,
    required int parent,
  }) async {
    try {
      final result = await remoteComment.postCommentReply(
        id: id,
        text: text,
        parent: parent,
      );
      return Right(result);
    } on DioError catch (e) {
      return Left(DioException.fromDioError(e));
    }
  }
}
