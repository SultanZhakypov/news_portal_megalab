import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/home/domain/usecases/get_all_post.dart';

part 'get_post_list_event.dart';
part 'get_post_list_state.dart';
part 'get_post_list_bloc.freezed.dart';

class GetAllPostBloc extends Bloc<GetPostListEvent, GetPostListState> {
  final GetAllPostUsecase getPostsUsecase;

  GetAllPostBloc({required this.getPostsUsecase}) : super(const _Initial()) {
    on<_GetPostsEvent>((event, emit) async {
      emit(const _$_Loading());

      final result = await getPostsUsecase();

      result.fold((error) => emit( _$_Error(message:error.errorMessage)), (post) {
        emit(_$_Success(posts: post));
      });
    });
  }
}
