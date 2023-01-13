import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/get_posts_repo.dart';

import '../../../../core/error/failure.dart';

class GetPostsUsecase {
  final GetPostsRepo getPostsRepo;
  GetPostsUsecase({
    required this.getPostsRepo,
  });

  Future<Either<Failure, List<PostEntity>>> call() async {
    return await getPostsRepo.getPosts();
  }
}
