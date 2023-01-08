import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/home/data/datasources/remote_home.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/home_entity.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/home/domain/repositories/postlist_repo.dart';

class PostListRepoImpl implements PostListRepo {
  final RemotePostList remotePostList;
  final NetworkInfo networkInfo;

  PostListRepoImpl({required this.remotePostList, required this.networkInfo});
  @override
  Future<Either<Failure, List<HomeEntity>>> getPostList(
      {required String search,
      required String tag,
      required String author}) async {
    return _getPosts(() {
      return remotePostList.getPostList(
          search: search, tag: tag, author: author);
    });
  }

  Future<Either<Failure, List<PostListModel>>> _getPosts(
      Future<List<PostListModel>> Function() getPosts) async {
    if (await networkInfo.isConnected) {
      try {
        final remotePost = await getPosts();

        return Right(remotePost);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }
}
