import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/detail/data/datasources/remote_detail.dart';

import '../../domain/entities/detail_entity.dart';
import '../../domain/repositories/detail_repo.dart';

class DetailRepoImpl implements DetailRepo {
  final RemoteDetail remoteDetail;

  DetailRepoImpl({required this.remoteDetail});
  @override
  Future<Either<Failure, DetailEntity>> getDetail(int id) async {
    try {
      final result = await remoteDetail.getDetail(id);
      return Right(result);
    } on DioException catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
