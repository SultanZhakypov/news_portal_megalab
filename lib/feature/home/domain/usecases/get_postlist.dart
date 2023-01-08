import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/home_entity.dart';
import 'package:news_portal_megalab/feature/home/domain/repositories/postlist_repo.dart';

import '../../../../core/error/failure.dart';

class GetPostListUseCase {
  final PostListRepo postListRepo;

  GetPostListUseCase(this.postListRepo);

  Future<Either<Failure, List<HomeEntity>>> call({
    required String search,
    required String author,
    required String tag,
  }) async {
    return await postListRepo.getPostList(
      search: search,
      author: author,
      tag: tag,
    );
  }
}
