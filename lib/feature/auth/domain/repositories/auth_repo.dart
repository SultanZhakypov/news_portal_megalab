import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import '../../../../core/error/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, Unit>> postAuth(AuthEntity authEntity);
}
