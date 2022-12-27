import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:news_portal_megalab/core/error/failure.dart';
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
        emit(_eitherDoneMessageOrErrorState(failureOrDoneMessage, 'SUCCESS'));
      }
    });
  }

  RegisterState _eitherDoneMessageOrErrorState(
      Either<Failure, Unit> either, String message) {
    return either.fold(
      (failure) => RegisterErrorState(
        message: _mapFailureToMessage(failure),
      ),
      (success) => RegisterSuccessState(message: message),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'SERVER_FAILURE_MESSAGE';
      case OfflineFailure:
        return 'OFFLINE_FAILURE_MESSAGE';
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}
