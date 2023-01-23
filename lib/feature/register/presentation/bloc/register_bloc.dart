import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/register/domain/usecases/post_register.dart';

import '../../../../resources/app_constants.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final PostRegisterUseCase postRegister;
  RegisterBloc({required this.postRegister}) : super(const _Initial()) {
    on<_PostRegisterEvent>((event, emit) async {
      final isValid = AppKeys.formKey1.currentState!.validate();
      if (isValid) {
        final result = await postRegister.registerRepo.postRegister(
          name: event.name,
          lastname: event.lastname,
          nickname: event.nickname,
          password: event.password,
          password2: event.password2,
        );
        result.fold((failure) => emit(_$_Error(message: failure.errorMessage)),
            (r) => emit(const _$_Success()));
      }
    });
  }
}
