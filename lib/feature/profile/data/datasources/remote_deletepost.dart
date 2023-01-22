import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';

import 'package:news_portal_megalab/resources/app_constants.dart';

abstract class RemoteDeletePost {
  Future<Unit> deletePost({required int id});
}

class RemoteDeletePostImpl implements RemoteDeletePost {
  final Dio dio;
  RemoteDeletePostImpl({
    required this.dio,
  });
  @override
  Future<Unit> deletePost({required int id}) async {
    final token = await SharedPrefs.getData(AppKeys.token);
    await dio.delete('/post/$id',
        options: Options(headers: {'Authorization': 'Token $token'}));

    return Future.value(unit);
  }
}
