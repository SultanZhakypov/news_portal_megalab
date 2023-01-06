import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/register/data/datasources/remote_register.dart';
import 'package:news_portal_megalab/feature/register/data/models/register_model.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/register/domain/repositories/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  final RemoteRegisterSource remoteRegisterSource;
  final NetworkInfo networkInfo;

  RegisterRepoImpl({
    required this.remoteRegisterSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> postRegister(
      RegisterEntity registerEntity) async {
    final RegisterModel registerModel = RegisterModel(
      nickname: registerEntity.nickname,
      name: registerEntity.name,
      lastName: registerEntity.lastName,
      imageProfile: registerEntity.imageProfile,
      password: registerEntity.password,
      password2: registerEntity.password2,
    );

    if (await networkInfo.isConnected) {
      try {
        await remoteRegisterSource.addPost(registerModel);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
