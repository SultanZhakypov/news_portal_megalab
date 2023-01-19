import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/like/domain/repositories/like_repo.dart';

class GetLikePostUsecase {
  final LikeRepo likeRepo;
  GetLikePostUsecase({
    required this.likeRepo,
  });
  Future<Either<Failure, List<PostEntity>>> call() async {
    return await likeRepo.getLike();
  }
}
