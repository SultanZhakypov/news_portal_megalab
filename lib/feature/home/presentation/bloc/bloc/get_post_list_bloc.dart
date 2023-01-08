import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/home_entity.dart';
import 'package:news_portal_megalab/feature/home/domain/usecases/get_postlist.dart';

part 'get_post_list_event.dart';
part 'get_post_list_state.dart';
part 'get_post_list_bloc.freezed.dart';

class GetPostListBloc extends Bloc<GetPostListEvent, GetPostListState> {
  final GetPostListUseCase getPostsUsecase;

  GetPostListBloc({required this.getPostsUsecase}) : super(const _Initial()) {
    on<_GetPostsEvent>((event, emit) async {
      emit(const _$_Loading());

      final result = await getPostsUsecase(author: '', search: '', tag: '');

      result.fold((error) => emit(const _$_Error()), (post) {
        emit(_$_Success(posts: post));
      });
    });
  }
}
