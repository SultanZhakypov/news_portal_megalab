import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/profile/data/models/user_model.dart';

import '../../../../resources/app_constants.dart';

abstract class RemotePutUser {
  Future<UserModel> putUser(
      {required String nickName,
      required String name,
      XFile? image,
      required String lastName});
}

class RemotePutUserImpl implements RemotePutUser {
  final Dio dio;

  RemotePutUserImpl({required this.dio});
  @override
  Future<UserModel> putUser({
    required String nickName,
    required String name,
    XFile? image,
    required String lastName,
  }) async {
    final token = await SharedPrefs.getData(AppConstants.token);
    final formData = {
      'nickname': nickName,
      'name': name,
      'last_name': lastName,
      'image': image == null ? null : await MultipartFile.fromFile(image.path),
    };
    final response = await dio.put(
      'user/',
      data: formData,
      options: Options(headers: {'Authorization': 'Token $token'}),
    );

    final author = response.data['nickname'];

    SharedPrefs.saveData(AppConstants.author, author);
    try {
      return UserModel.fromJson(response.data);
    } on DioError {
      throw ServerException();
    }
  }
}
