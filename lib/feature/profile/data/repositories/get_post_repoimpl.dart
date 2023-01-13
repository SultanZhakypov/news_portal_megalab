import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_getpost.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/get_posts_repo.dart';

class GetpostsRepoImpl implements GetPostsRepo {
  final NetworkInfo networkInfo;
  final RemoteGetPost remoteGetPost;

  GetpostsRepoImpl({required this.networkInfo, required this.remoteGetPost});
  @override
  Future<Either<Failure, List<PostEntity>>> getPosts() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteGetPost.getPostProfile();
        return Right(result);
      } on DioError {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
