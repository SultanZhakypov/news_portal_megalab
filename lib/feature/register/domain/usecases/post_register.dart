import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/register/domain/repositories/register_repo.dart';

import '../../../../core/error/dio_exception.dart';

class PostRegisterUseCase {
  final RegisterRepo registerRepo;

  PostRegisterUseCase(this.registerRepo);

  Future<Either<DioException, Unit>> call({
    required String name,
    required String lastname,
    required String nickname,
    required String password,
    required String password2,
    String? profileImage,
  }) async {
    return await registerRepo.postRegister(
      name: name,
      lastname: lastname,
      nickname: nickname,
      password: password,
      password2: password2,
    );
  }
}
