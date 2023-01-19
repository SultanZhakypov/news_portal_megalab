import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/get_posts_usecase.dart';

part 'getposts_bloc.freezed.dart';
part 'getposts_event.dart';
part 'getposts_state.dart';

class GetpostsBloc extends Bloc<GetpostsEvent, GetpostsState> {
  final GetPostsUsecase getPostsUsecase;
  GetpostsBloc({required this.getPostsUsecase}) : super(const _Initial()) {
    on<_GetPostsEvent>((event, emit) async {
      final result = await getPostsUsecase.getPostsRepo.getPosts();
      result.fold((l) => emit(_$_Error(message: l.message)),
          (post) => emit(_$_Success(post: post)));
    });
  }
}
