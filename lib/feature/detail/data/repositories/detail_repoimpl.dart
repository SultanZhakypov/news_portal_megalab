import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/detail/data/datasources/remote_detail.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/detail_entity.dart';
import '../../domain/repositories/detail_repo.dart';

class DetailRepoImpl implements DetailRepo {
  final NetworkInfo networkInfo;
  final RemoteDetail remoteDetail;

  DetailRepoImpl({required this.networkInfo, required this.remoteDetail});
  @override
  Future<Either<Failure, DetailEntity>> getDetail(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDetail.getDetail(id);
        return Right(result);
      } on DioError {
        throw const Left(ServerFailure);
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
