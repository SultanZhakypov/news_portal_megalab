import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/profile/data/models/user_model.dart';

import '../../../../core/error/exception.dart';
import '../../../../resources/app_constants.dart';

abstract class RemoteUser {
  Future<UserModel> getUser();
}

class RemoteUserImpl implements RemoteUser {
  final Dio dio;

  RemoteUserImpl({required this.dio});
  @override
  Future<UserModel> getUser() async {

    try {
    final token = await SharedPrefs.getData(AppConstants.token);

    final response = await dio.get(
      'user/',
      options: Options(headers: {'Authorization': 'Token $token'}),
    );
      return UserModel.fromJson(response.data);
    } on DioError {
      throw ServerException();
    }
  }
}
