import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/feature/register/data/models/register_model.dart';

abstract class RemoteRegisterSource {
  Future<Unit> addPost(RegisterModel registerModel);
}

class RemoteRegisterSourceImpl implements RemoteRegisterSource {
  final Dio dio;

  RemoteRegisterSourceImpl({required this.dio});

  @override
  Future<Unit> addPost(RegisterModel model) async {
    final formData = FormData.fromMap({
      'nickname': model.nickname,
      'name': model.name,
      'last_name': model.lastName,
      'profile_image': model.imageProfile,
      'password': model.password,
      'password2': model.password2,
    });

    try {
      final response = await dio.post(
        'registration/',
        data: formData,
      );

      return Future.value(unit);
    } on DioError {
      throw ServerException();
    }
  }
}
