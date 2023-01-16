import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/postprofile_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/postprofile_repo.dart';

class PostProfileUsecase {
  final PostProfileRepo postProfileRepo;

  PostProfileUsecase({required this.postProfileRepo});

  Future<Either<DioException, PostProfileEntity>> call({
    required String title,
    required String text,
    XFile? image,
    required String tag,
    required String shortDesc,
  }) async {
    return await postProfileRepo.postProfile(
      title: title,
      text: text,
      image: image,
      tag: tag,
      shortDesc: shortDesc,
    );
  }
}
