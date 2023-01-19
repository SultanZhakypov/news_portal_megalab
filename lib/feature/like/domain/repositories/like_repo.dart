import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';

abstract class LikeRepo {
  Future<Either<Failure, List<PostEntity>>> getLike();
}
