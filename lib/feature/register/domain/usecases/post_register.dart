import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/feature/register/domain/repositories/register_repo.dart';

import '../../../../core/error/failure.dart';

class PostRegisterUseCase {
  final RegisterRepo registerRepo;

  PostRegisterUseCase(this.registerRepo);

  Future<Either<Failure, Unit>> call(RegisterEntity registerEntity) async {
    return await registerRepo.postRegister(registerEntity);
  }
}

