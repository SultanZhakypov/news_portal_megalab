import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/domain/usecases/post_auth.dart';

import '../../../../../main.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PostAuthUsecase postAuth;
  AuthBloc({required this.postAuth}) : super(AuthInitialState()) {
    on<AuthPostEvent>((event, emit) async {
      final isValid = formKey.currentState!.validate();

      if (isValid) {
        final result = await postAuth(event.authEntity);
        result.fold((l) => emit(const AuthErrorState('Error')),
            (r) => emit(AuthSuccessState()));
      }
    });
  }
}
