import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';

import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_put_user.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_user.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/user_repo.dart';

class UserRepoImpl implements UserRepo {
  final RemotePutUser remotePutUser;
  final RemoteUser remoteUser;

  UserRepoImpl({
    required this.remotePutUser,
    required this.remoteUser,
  });
  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    try {
      final result = await remoteUser.getUser();
      return Right(result);
    } on DioException catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<DioException, UserEntity>> putUser({
    required String nickName,
    required String name,
    required String lastName,
    XFile? image,
  }) async {
    try {
      final result = await remotePutUser.putUser(
        nickName: nickName,
        name: name,
        lastName: lastName,
        image: image,
      );
      return Right(result);
    } on DioError catch (e) {
      return Left(DioException.fromDioError(e));
    }
  }
}
