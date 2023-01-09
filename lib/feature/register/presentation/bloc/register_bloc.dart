import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/feature/register/domain/usecases/post_register.dart';
import 'package:news_portal_megalab/main.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final PostRegisterUseCase postRegister;
  RegisterBloc({required this.postRegister}) : super(const _Initial()) {
    on<_PostRegisterEvent>((event, emit) async {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        final result = await postRegister(event.registerEntity);
        result.fold((l) => emit(const _$_Error(message: 'Error')),
            (r) => emit(const _$_Success()));
      }
    });
  }
}
