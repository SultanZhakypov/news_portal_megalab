import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';
import 'package:news_portal_megalab/feature/detail/domain/repositories/detail_repo.dart';

class GetDetailUsecase {
  final DetailRepo detailRepo;

  GetDetailUsecase({required this.detailRepo});
  Future<Either<Failure, DetailEntity>> call( int id) async {
    return await detailRepo.getDetail(id);
  }
}
