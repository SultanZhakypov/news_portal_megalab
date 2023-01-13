import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/user_repo.dart';

import '../../../../core/error/failure.dart';

class UserUsecase {
  final UserRepo userRepo;
  UserUsecase({
    required this.userRepo,
  });

  Future<Either<Failure, UserEntity>> call() async {
    return await userRepo.getUser();
  }
}
