import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';

abstract class GetPostsRepo {
  Future<Either<DioException, List<PostEntity>>> getPosts();
}
