import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/home_entity.dart';

abstract class PostListRepo {
  Future<Either<Failure, List<HomeEntity>>> getAllPost(
      );
  Future<Either<Failure, List<HomeEntity>>> searchPost(
      {required String search, required String tag, required String author});
}
