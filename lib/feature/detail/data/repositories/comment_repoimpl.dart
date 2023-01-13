import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/detail/data/datasources/remote_comment.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/domain/repositories/comment_repo.dart';

class CommentRepoImpl implements CommentRepo {
  final RemoteComment remoteComment;
  final NetworkInfo networkInfo;

  CommentRepoImpl({required this.remoteComment, required this.networkInfo});

  @override
  Future<Either<Failure, CommentEntity>> postComment(
      {required int id, required String text}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteComment.postComment(id: id, text: text);
        return  Right(result);
      } on DioError {
        throw const Left(ServerFailure);
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
