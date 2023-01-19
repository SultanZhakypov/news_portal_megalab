import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';

import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../../../core/platform/prefs_settings.dart';

abstract class RemoteLike {
  Future<List<PostListModel>> getLike();
  Future<int> postLike({required int id});
}

class RemoteLikeImpl implements RemoteLike {
  final Dio dio;
  RemoteLikeImpl({
    required this.dio,
  });
  @override
  Future<List<PostListModel>> getLike() async {
    try {
      final token = await SharedPrefs.getData(AppKeys.token);
      final response = await dio.get(
        '/like/',
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

  @override
  Future<int> postLike({required int id}) async {
    final token = await SharedPrefs.getData(AppKeys.token);
    final response = await dio.post(
      '/like/',
      data: {
        'post':id
      },
      options: Options(headers: {'Authorization': 'Token $token'}),
    );

    return response.data['post'];
  }
}
