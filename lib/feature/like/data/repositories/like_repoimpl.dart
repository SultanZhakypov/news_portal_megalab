import 'package:dartz/dartz.dart';

import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';
import 'package:news_portal_megalab/feature/like/data/datasources/remote_like.dart';
import 'package:news_portal_megalab/feature/like/domain/repositories/like_repo.dart';

class LikeRepoImpl implements LikeRepo {
  final RemoteLike remoteLike;
  LikeRepoImpl({
    required this.remoteLike,
  });
  @override
  Future<Either<Failure, List<PostListModel>>> getLike() async {
    try {
      final result = await remoteLike.getLike();
      return Right(result);
    } on DioException catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
