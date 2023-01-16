import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import 'package:news_portal_megalab/feature/profile/domain/usecases/user_put_usecase.dart';

part 'put_user_bloc.freezed.dart';
part 'put_user_event.dart';
part 'put_user_state.dart';

class PutUserBloc extends Bloc<PutUserEvent, PutUserState> {
  final UserPutUsecase userPutUsecase;
  PutUserBloc({required this.userPutUsecase}) : super(const _Initial()) {
    on<_PutUserEvent>((event, emit) async {
      final result = await userPutUsecase.userRepo.putUser(
        nickName: event.nickName,
        name: event.name,
        lastName: event.lastName,
        image: event.image,
      );
      result.fold(
          (l) => emit( _$_Error(message: l.errorMessage)),
          (newUser) => emit(const _$_Success(message: 'Успешно')));
    });
  }
}
