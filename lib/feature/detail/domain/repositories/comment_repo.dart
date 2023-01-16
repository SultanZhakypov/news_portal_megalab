import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';

abstract class CommentRepo {
  Future<Either<DioException, CommentEntity>> postComment(
      {required int id, required String text});
}
