import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/register/data/datasources/remote_register.dart';
import 'package:news_portal_megalab/feature/register/data/models/register_model.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/register/domain/repositories/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  final RemoteRegisterSource remoteRegisterSource;

  RegisterRepoImpl({
    required this.remoteRegisterSource,
  });

  @override
  Future<Either<DioException, RegisterModel>> postRegister({
    required String name,
    required String lastname,
    required String nickname,
    required String password,
    required String password2,
    String? profileImage,
  }) async {
    try {
      final result = await remoteRegisterSource.addPost(
        name: name,
        lastname: lastname,
        nickname: nickname,
        password: password,
        password2: password2,
      );
      return Right(result);
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
