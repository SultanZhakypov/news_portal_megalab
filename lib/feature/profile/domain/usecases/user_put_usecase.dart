import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/user_repo.dart';

import '../../../../core/error/dio_exception.dart';

class UserPutUsecase {
  final UserRepo userRepo;
  UserPutUsecase({
    required this.userRepo,
  });

  Future<Either<DioException, UserEntity>> call(
      {required String nickName,
      required String name,
      XFile? image,
      required String lastName}) async {
    return await userRepo.putUser(
      nickName: nickName,
      name: name,
      lastName: lastName,
      image: image,
    );
  }
}
