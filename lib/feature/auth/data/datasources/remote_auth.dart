import 'package:dio/dio.dart';
import 'package:news_portal_megalab/feature/auth/data/models/auth_model.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../../../core/platform/prefs_settings.dart';

abstract class RemoteAuthSource {
  Future<String> addPost(AuthModel authModel);
}

class RemoteAuthimpl implements RemoteAuthSource {
  final Dio dio;

  RemoteAuthimpl({required this.dio});

  @override
  Future<String> addPost(AuthModel authModel) async {
    final formData = FormData.fromMap({
      'nickname': authModel.nickname,
      'password': authModel.password,
    });

    final response = await dio.post(
      '/login/',
      data: formData,
    );
    final author = authModel.nickname;
    final token = response.data[AppKeys.token];

    SharedPrefs.saveData(AppKeys.author, author);
    SharedPrefs.saveData(AppKeys.token, token);

    return response.data[AppKeys.token];
  }
}
