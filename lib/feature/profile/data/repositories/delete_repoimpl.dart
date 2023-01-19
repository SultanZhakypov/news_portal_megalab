import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_deletepost.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/delete_repo.dart';

class DeleteRepoImpl implements DeleteRepo {
  final RemoteDeletePost remoteDeletePost;
  DeleteRepoImpl({
    required this.remoteDeletePost,
  });
  @override
  Future<Either<DioException, PostListModel>> deletePost({required int id})async {
    try {
      final result = await remoteDeletePost.deletePost(id: id);
      return Right(result);
    } on DioError catch (e) {
      return Left(DioException.fromDioError(e));
    }
  }

}
