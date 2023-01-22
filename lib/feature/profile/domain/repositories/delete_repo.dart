import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/dio_exception.dart';
import 'package:news_portal_megalab/feature/home/data/models/home_postlist_model.dart';

abstract class DeleteRepo{
  Future<Either<DioException,Unit>> deletePost({required int id});
}