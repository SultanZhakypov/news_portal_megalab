import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/home/domain/repositories/postlist_repo.dart';

class GetAllPostUsecase {
  final PostListRepo postListRepo;

  GetAllPostUsecase(this.postListRepo);

  Future<Either<Failure, List<PostEntity>>> call() async {
    return await postListRepo.getAllPost();
  }
}
