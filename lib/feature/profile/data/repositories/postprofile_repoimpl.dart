import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_postprofile.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/postprofile_entity.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/postprofile_repo.dart';

class PostProfileRepoImpl implements PostProfileRepo {
  final RemotePostProfile remotePostProfile;

  PostProfileRepoImpl({required this.remotePostProfile});
  @override
  Future<Either<DioException, PostProfileEntity>> postProfile({
    required String title,
    required String text,
    XFile? image,
    required String tag,
    required String shortDesc,
  }) async {
    try {
      final result = await remotePostProfile.postProfile(
        title: title,
        text: text,
        image: image,
        tag: tag,
        shortDesc: shortDesc,
      );
      return Right(result);
    } on DioError catch (e) {
      return Left( DioException.fromDioError(e));
    }
  }
}
