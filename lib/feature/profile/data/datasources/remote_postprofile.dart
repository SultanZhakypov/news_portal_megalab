import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/profile/data/models/postprofile_model.dart';

import '../../../../resources/app_constants.dart';

abstract class RemotePostProfile {
  Future<PostProfileModel> postProfile({
    required String title,
    required String text,
    XFile? image,
    required String tag,
    required String shortDesc,
  });
}

class RemotePostProfileImpl implements RemotePostProfile {
  final Dio dio;

  RemotePostProfileImpl({required this.dio});
  @override
  Future<PostProfileModel> postProfile({
    required String title,
    required String text,
    XFile? image,
    required String tag,
    required String shortDesc,
  }) async {
    final token = await SharedPrefs.getData(AppKeys.token);

    final formData = FormData.fromMap({
      'title': title,
      'text': text,
      'image': image == null ? null : await MultipartFile.fromFile(image.path),
      'tag': tag,
      'short_desc': shortDesc,
    });
    final response = await dio.post(
      '/post/',
      data: formData,
      options: Options(headers: {'Authorization': 'Token $token'}),
    );

    return PostProfileModel.fromJson(response.data);
  }
}
