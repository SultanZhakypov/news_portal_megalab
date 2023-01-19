import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/delete_post_usecase.dart';

part 'delete_post_event.dart';
part 'delete_post_state.dart';
part 'delete_post_bloc.freezed.dart';

class DeletePostBloc extends Bloc<DeletePostEvent, DeletePostState> {
  final DeletePostUsecase deletePostUsecase;
  DeletePostBloc({required this.deletePostUsecase}) : super(const _Initial()) {
    on<_DeletePostEvent>((event, emit) async {
      final result = await deletePostUsecase.deletePost(id: event.id);
      result.fold((l) => emit(_$_Error(message: l.errorMessage)),
          (r) => emit(const _$_Success(message: 'Deleted')));
    });
  }
}
