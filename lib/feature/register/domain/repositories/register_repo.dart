import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';

abstract class RegisterRepo {
  Future<Either<DioException, RegisterEntity>> postRegister({
    required String name,
    required String lastname,
    required String nickname,
    required String password,
    required String password2,
    String? profileImage,
  });
}
