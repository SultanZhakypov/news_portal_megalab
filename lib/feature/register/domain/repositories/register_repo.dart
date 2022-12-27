import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';

abstract class RegisterRepo {
  Future<Either<Failure, Unit>> postRegister(RegisterEntity registerEntity);
}
