import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/feature/register/domain/usecases/post_register.dart';

import '../../../../../main.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final PostRegisterUseCase postRegister;
  RegisterBloc({required this.postRegister}) : super(RegisterInitialState()) {
    on<RegisterPostEvent>((event, emit) async {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        final result = await postRegister(event.registerEntity);
        result.fold((l) => emit(const RegisterErrorState('Error')),
            (r) => emit(RegisterSuccessState()));
      }
    });
  }
}
