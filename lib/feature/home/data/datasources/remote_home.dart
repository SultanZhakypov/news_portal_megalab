import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

abstract class RemotePostList {
  Future<List<PostListModel>> getPostList(
      {required String search, required String tag, required String author});
}

class RemotePostListImpl implements RemotePostList {
  final Dio dio;

  RemotePostListImpl({required this.dio});

  @override
  Future<List<PostListModel>> getPostList(
      {required String search,
      required String tag,
      required String author}) async {
    final token = await SharedPrefs.getData(AppConstants.token);
    final response = await dio.get(
      'post/',
      queryParameters: {
        'search': search,
        'tag': tag,
        'author': author,
      },
      options: Options(headers: {'Authorization': 'Token $token'}),
    );

    try {
      final posts = response.data;
      return (posts as List)
          .map((post) => PostListModel.fromJson(post))
          .toList();
    } on DioError {
      throw ServerException();
    }
  }
}
