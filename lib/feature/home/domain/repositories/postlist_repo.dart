import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';

abstract class PostListRepo {
  Future<Either<DioException, List<PostEntity>>> getAllPost();
  Future<Either<DioException, List<PostEntity>>> searchPost(
      {required String search, required String tag, required String author});
}
