import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/like/domain/usecases/get_like_usecase.dart';


part 'like_bloc.freezed.dart';
part 'like_event.dart';
part 'like_state.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {
  final GetLikePostUsecase getLikePostUsecase;
  LikeBloc({required this.getLikePostUsecase}) : super(const _Initial()) {
    on<_GetLikeEvent>((event, emit) async {
      final result = await getLikePostUsecase.likeRepo.getLike();

      result.fold((failure) => emit(_$_Error(message: failure.message)),
          (post) => emit(_$_Success(post: post)));
    });
  }
}
