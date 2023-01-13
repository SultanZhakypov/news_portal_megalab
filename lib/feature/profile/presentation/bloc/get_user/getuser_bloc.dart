import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/user_usecase.dart';

part 'getuser_bloc.freezed.dart';
part 'getuser_event.dart';
part 'getuser_state.dart';

class GetuserBloc extends Bloc<GetuserEvent, GetuserState> {
  final UserUsecase userUsecase;
  GetuserBloc({required this.userUsecase}) : super(const _Initial()) {
    on<_GetUserEvent>((event, emit) async {
      final result = await userUsecase.userRepo.getUser();
      result.fold((l) => emit(const _$_Error()),
          (user) => emit(_$_Success(user: user)));
    });
  }
}
