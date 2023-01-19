import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';

import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

abstract class RemoteDeletePost {
  Future<PostListModel> deletePost({required int id});
}

class RemoteDeletePostImpl implements RemoteDeletePost {
  final Dio dio;
  RemoteDeletePostImpl({
    required this.dio,
  });
  @override
  Future<PostListModel> deletePost({required int id}) async {
    final token = await SharedPrefs.getData(AppKeys.token);
    final response = await dio.delete('/post/$id',
        options: Options(headers: {'Authorization': 'Token $token'}));

    return PostListModel.fromJson(response.data);
  }
}
