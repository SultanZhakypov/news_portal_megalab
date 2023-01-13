import 'package:dartz/dartz.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';

abstract class DetailRepo{
  Future<Either<Failure,DetailEntity>> getDetail( int id);
}