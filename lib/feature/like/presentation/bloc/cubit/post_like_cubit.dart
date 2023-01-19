import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:news_portal_megalab/feature/like/domain/usecases/post_like_usecase.dart';

part 'post_like_cubit.freezed.dart';
part 'post_like_state.dart';

class PostLikeCubit extends Cubit<PostLikeState> {
  final PostLikeusecase postLikeusecase;
  PostLikeCubit({required this.postLikeusecase})
      : super(const PostLikeState.initial());

  button({required int id}) async {
    final result = await postLikeusecase.postLike(id: id);

    result.fold(
        (l) => emit(const _$_Error()), (r) => emit(const _$_Success()));
  }
}


