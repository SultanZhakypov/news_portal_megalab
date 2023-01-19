import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';

abstract class CommentRepo {
  Future<Either<Failure, List<Comment>>> postComment(
      {required int id, required String text});
}
