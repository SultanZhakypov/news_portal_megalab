import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/home_entity.dart';
import '../repositories/postlist_repo.dart';

class SearchPostUseCase {
  final PostListRepo postListRepo;

  SearchPostUseCase({required this.postListRepo});

  Future<Either<Failure, List<HomeEntity>>> call({
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