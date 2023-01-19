import 'package:dio/dio.dart';
import 'package:news_portal_megalab/feature/register/data/models/register_model.dart';

abstract class RemoteRegisterSource {
  Future<RegisterModel> addPost({
    required String name,
    required String lastname,
    required String nickname,
    required String password,
    required String password2,
    String? profileImage,
  });
}

class RemoteRegisterSourceImpl implements RemoteRegisterSource {
  final Dio dio;

  RemoteRegisterSourceImpl({required this.dio});

  @override
  Future<RegisterModel> addPost({
    required String name,
    required String lastname,
    required String nickname,
    required String password,
    required String password2,
    String? profileImage,
  }) async {
    final formData = FormData.fromMap({
      'nickname': nickname,
      'name': name,
      'last_name': lastname,
      'profile_image': null,
      'password': password,
      'password2': password2,
    });

    final response = await dio.post(
      '/registration/',
      data: formData,
    );

    return RegisterModel.fromJson(response.data);
  }
}
