import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/delete_repo.dart';

class DeletePostUsecase {
  final DeleteRepo deleteRepo;
  DeletePostUsecase({
    required this.deleteRepo,
  });
  Future<Either<DioException, Unit>> deletePost({required int id}) async {
    return await deleteRepo.deletePost(id: id);
  }
}
