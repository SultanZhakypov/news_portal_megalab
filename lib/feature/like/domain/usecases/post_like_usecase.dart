import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/like/domain/repositories/like_repo.dart';

class PostLikeusecase {
  final LikeRepo likeRepo;
  PostLikeusecase({
    required this.likeRepo,
  });

  Future<Either<DioException, int>> postLike({required int id}) async {
    return await likeRepo.postLike(id: id);
  }
}
