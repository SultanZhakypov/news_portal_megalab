import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/home/data/datasources/remote_home.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/home/domain/repositories/postlist_repo.dart';

class PostListRepoImpl implements PostListRepo {
  final RemotePostList remotePostList;

  PostListRepoImpl({required this.remotePostList});
  @override
  Future<Either<Failure, List<PostEntity>>> searchPost({
    required String search,
    required String tag,
    required String author,
  }) async {
    return _getPosts(() {
      return remotePostList.searchPost(
          search: search, tag: tag, author: author);
    });
  }

  @override
  Future<Either<Failure, List<PostEntity>>> getAllPost() {
    return _getPosts(() {
      return remotePostList.getAllPost();
    });
  }

  Future<Either<Failure, List<PostListModel>>> _getPosts(
      Future<List<PostListModel>> Function() getPosts) async {
    try {
      final remotePost = await getPosts();

      return Right(remotePost);
    } on DioException catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
