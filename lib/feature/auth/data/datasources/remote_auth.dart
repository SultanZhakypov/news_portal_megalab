import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/auth/data/models/auth_model.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

abstract class RemoteAuthSource {
  Future<Unit> addPost(AuthModel authModel);
}

class RemoteAuthimpl implements RemoteAuthSource {
  final Dio dio;

  RemoteAuthimpl({required this.dio});

  @override
  Future<Unit> addPost(AuthModel authModel) async {
    final formData = FormData.fromMap({
      'nickname': authModel.nickname,
      'password': authModel.password,
    });

    try {
      final response = await dio.post(
        'login/',
        data: formData,
      );
      final token = response.data[AppConstants.token];
      SharedPrefs.saveData(AppConstants.token, token);
      return Future.value(unit);
    } on DioError {
 throw ServerException();
    }

   
  }
}
