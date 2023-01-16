import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';

import '../entities/post_entity.dart';
import '../repositories/postlist_repo.dart';

class SearchPostUseCase {
  final PostListRepo postListRepo;

  SearchPostUseCase({required this.postListRepo});

  Future<Either<DioException, List<PostEntity>>> call({
    required String search,
    required String author,
    required String tag,
  }) async {
    return await postListRepo.searchPost(
      search: search,
      author: author,
      tag: tag,
    );
  }
}
