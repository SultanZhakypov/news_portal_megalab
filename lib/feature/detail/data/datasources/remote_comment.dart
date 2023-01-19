import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/feature/detail/data/models/comment_model.dart';

import '../../../../resources/export_resources.dart';

abstract class RemoteComment {
  Future<List<CommentModel>> postComment(
      {required int id, required String text});
}

class RemoteCommentImpl implements RemoteComment {
  final Dio dio;

  RemoteCommentImpl({required this.dio});
  @override
  Future<List<CommentModel>> postComment(
      {required int id, required String text}) async {
    final formData = FormData.fromMap({
      'post': id,
      'text': text,
    });

    try {
      final token = await SharedPrefs.getData(AppKeys.token);
      final response = await dio.post(
        'comment/',
        data: formData,
        options: Options(headers: {'Authorization': 'Token $token'}),
      );
      final comments = response.data;
      return (comments as List)
          .map((comment) => CommentModel.fromJson(comment))
          .toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
