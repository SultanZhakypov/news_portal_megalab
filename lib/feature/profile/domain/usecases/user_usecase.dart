import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/user_repo.dart';

class UserUsecase {
  final UserRepo userRepo;
  UserUsecase({
    required this.userRepo,
  });

  Future<Either<DioException, UserEntity>> call() async {
    return await userRepo.getUser();
  }
}
