import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/domain/repositories/auth_repo.dart';

import '../../../../core/error/failure.dart';

class PostAuthUsecase {
  final AuthRepo authRepo;

  PostAuthUsecase(this.authRepo);

  Future<Either<DioException, String>> call(AuthEntity authEntity) async {
    return await authRepo.postAuth(authEntity);
  }
}
