import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/feature/register/domain/usecases/post_register.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final PostRegisterUseCase postRegister;
  RegisterBloc({required this.postRegister}) : super(RegisterInitialState()) {
    on<RegisterEvent>((event, emit) async {
      if (event is RegisterPostEvent) {
        emit(RegisterLoadingState());
        final failureOrDoneMessage = await postRegister(event.registerEntity);
      }
    });
  }
}
