import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';

import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';

import '../../../../core/platform/prefs_settings.dart';
import '../../../../resources/app_constants.dart';

abstract class RemoteGetPost {
  Future<List<PostListModel>> getPostProfile();
}

class RemoteGetPostImpl implements RemoteGetPost {
  final Dio dio;
  RemoteGetPostImpl({
    required this.dio,
  });

  @override
  Future<List<PostListModel>> getPostProfile() async {
    try {
      final token = await SharedPrefs.getData(AppKeys.token);
      final author = await SharedPrefs.getData(AppKeys.author);
      final response = await dio.get(
        '/post/?search=&tag=&author=$author',
        options: Options(headers: {'Authorization': 'Token $token'}),
      );
      final posts = response.data;
      return (posts as List)
          .map((post) => PostListModel.fromJson(post))
          .toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
