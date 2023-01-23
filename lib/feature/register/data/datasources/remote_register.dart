import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class RemoteRegisterSource {
  Future<Unit> addPost({
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
  Future<Unit> addPost({
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

    await dio.post(
      '/registration/',
      data: formData,
    );

    return Future.value(unit);
  }
}
