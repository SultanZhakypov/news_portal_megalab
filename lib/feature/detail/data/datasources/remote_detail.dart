import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/detail/data/models/detail_model.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

abstract class RemoteDetail {
  Future<DetailModel> getDetail(int id);
}

class RemoteDetailImpl implements RemoteDetail {
  final Dio dio;

  RemoteDetailImpl({required this.dio});

  @override
  Future<DetailModel> getDetail( int id) async {
    final token = await SharedPrefs.getData(AppConstants.token);
    final response = await dio.get(
      'post/$id',
      options: Options(headers: {'Authorization': 'Token $token'}),
    );
    try {
      return DetailModel.fromJson(response.data);
    } on DioError {
      throw ServerException();
    }
  }
}