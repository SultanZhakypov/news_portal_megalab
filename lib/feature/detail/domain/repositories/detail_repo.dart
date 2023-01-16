import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';

abstract class DetailRepo {
  Future<Either<DioException, DetailEntity>> getDetail(int id);
}
