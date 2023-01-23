import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';

import '../../../../resources/export_resources.dart';

abstract class RemoteComment {
  Future<CommentModel> postComment({required int id, required String text});
  Future<CommentModel> postCommentReply(
      {required int id, required String text, required int parent});
}

class RemoteCommentImpl implements RemoteComment {
  final Dio dio;

  RemoteCommentImpl({required this.dio});
  @override
  Future<CommentModel> postComment(
      {required int id, required String text}) async {
    final formData = FormData.fromMap({
      'post': id,
      'text': text,
    });

    final token = await SharedPrefs.getData(AppKeys.token);
    final response = await dio.post(
      '/comment/',
      data: formData,
      options: Options(headers: {'Authorization': 'Token $token'}),
    );
    return CommentModel.fromJson(response.data);
  }

  @override
  Future<CommentModel> postCommentReply({
    required int id,
    required String text,
    required int parent,
  }) async {
    final formData = FormData.fromMap({
      'post': id,
      'text': text,
      'parent': parent,
    });

    final token = await SharedPrefs.getData(AppKeys.token);
    final response = await dio.post(
      '/comment/',
      data: formData,
      options: Options(headers: {'Authorization': 'Token $token'}),
    );
    return CommentModel.fromJson(response.data);
  }
}
