import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/error/failure.dart';

import '../../../../core/error/dio_exception.dart';
import '../entities/user_entity.dart';

abstract class UserRepo {
  Future<Either<Failure, UserEntity>> getUser();
  Future<Either<DioException, UserEntity>> putUser({
    required String nickName,
    required String name,
    required String lastName,
    XFile? image,
  });
}
