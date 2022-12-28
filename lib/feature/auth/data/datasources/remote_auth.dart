import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_portal_megalab/core/error/exception.dart';
import 'package:news_portal_megalab/feature/auth/data/models/auth_model.dart';

abstract class RemoteAuthSource {
  Future<Unit> addPost(AuthModel authModel);
}

class RemoteAuthimpl implements RemoteAuthSource {
  final Dio dio;

  RemoteAuthimpl({required this.dio});

  @override
  Future<Unit> addPost(AuthModel model) async {
    final formData = FormData.fromMap({
      'nickname': model.nickname,
      'password': model.password,
    });
    final response = await dio.post(
      'login/',
      data: formData,
    );
    

    if (response.statusCode == 200) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }
}
