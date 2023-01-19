import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_getpost.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/get_posts_repo.dart';

import '../../../../core/error/dio_exception.dart';

class GetpostsRepoImpl implements GetPostsRepo {
  final RemoteGetPost remoteGetPost;

  GetpostsRepoImpl({required this.remoteGetPost});
  @override
  Future<Either<Failure, List<PostEntity>>> getPosts() async {
    try {
      final result = await remoteGetPost.getPostProfile();
      return Right(result);
    } on DioException catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
