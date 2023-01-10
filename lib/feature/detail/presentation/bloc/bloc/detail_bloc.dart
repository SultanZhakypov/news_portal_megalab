import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';
import 'package:news_portal_megalab/feature/detail/domain/usecases/get_detail.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final GetDetailUsecase getDetailUsecase;
  DetailBloc({required this.getDetailUsecase}) : super(const _Initial()) {
    on<_GetDetailEvent>((event, emit) async {
      emit(const _$_Loading());
      final result = await getDetailUsecase(event.id);

      result.fold((e) => emit(const _$_Error()),
          ((post) => emit(_$_Success(detailPost: post))));
    });
  }
}
