import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';

import '../../../../resources/export_resources.dart';

abstract class RemoteComment {
  Future<CommentModel> postComment({required int id, required String text});
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

    final token = await SharedPrefs.getData(AppConstants.token);
    final response = await dio.post(
      'comment/',
      data: formData,
      options: Options(headers: {'Authorization': 'Token $token'}),
    );
    try {
      return CommentModel.fromJson(response.data);
    } on DioError {
      throw ServerException();
    }
  }
}
