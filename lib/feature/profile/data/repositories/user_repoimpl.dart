import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_user.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/user_repo.dart';

class UserRepoImpl implements UserRepo {
  final RemoteUser remoteUser;
  final NetworkInfo networkInfo;
  UserRepoImpl({
    required this.remoteUser,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteUser.getUser();
        return Right(result);
      } on DioError {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
