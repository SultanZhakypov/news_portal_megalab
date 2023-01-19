import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/auth/data/datasources/remote_auth.dart';
import 'package:news_portal_megalab/feature/auth/data/models/auth_model.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final RemoteAuthSource remoteAuthSource;

  AuthRepoImpl({
    required this.remoteAuthSource,
  });

  @override
  Future<Either<DioException, String>> postAuth(AuthEntity authEntity) async {
    final AuthModel authModel = AuthModel(
      nickname: authEntity.nickname,
      password: authEntity.password,
    );

    try {
      final result = await remoteAuthSource.addPost(authModel);
      return Right(result);
    } on DioError catch (e) {
      return Left(DioException.fromDioError(e));
    }
  }
}
