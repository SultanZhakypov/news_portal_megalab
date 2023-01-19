import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/feature/profile/domain/entities/postprofile_entity.dart';

import '../../../../core/error/dio_exception.dart';

abstract class PostProfileRepo {
  Future<Either<DioException, PostProfileEntity>> postProfile({
    required String title,
    required String text,
    XFile? image,
    required String tag,
    required String shortDesc,
  });
}
