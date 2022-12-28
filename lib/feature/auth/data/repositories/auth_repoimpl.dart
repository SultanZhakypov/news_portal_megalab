import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/auth/data/datasources/remote_auth.dart';
import 'package:news_portal_megalab/feature/auth/data/models/auth_model.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/domain/repositories/auth_repo.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/platform/network_info.dart';

class AuthRepoImpl implements AuthRepo {
  final RemoteAuthSource remoteAuthSource;
  final NetworkInfo networkInfo;

  AuthRepoImpl({
    required this.remoteAuthSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> postAuth(AuthEntity authEntity) async {
    final AuthModel authModel = AuthModel(
      nickname: authEntity.nickname,
      password: authEntity.password,
    );

    if (await networkInfo.isConnected) {
      try {
        final remoteAuth = await remoteAuthSource.addPost(authModel);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
