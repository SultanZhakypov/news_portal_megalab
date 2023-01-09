import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/home_entity.dart';
import 'package:news_portal_megalab/feature/home/domain/usecases/search_Post.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchPostUseCase searchPostUseCase;
  SearchBloc({required this.searchPostUseCase}) : super(const _Initial()) {
    on<_SearchPostEvent>((event, emit) async {
      emit(const _$_Loading());

      final result = await searchPostUseCase(
        author: event.author,
        search: event.search,
        tag: event.tag,
      );

      result.fold((error) => emit(const _$_Error()), (post) {
        emit(_$_Success(posts: post));
      });
    });
  }
}
