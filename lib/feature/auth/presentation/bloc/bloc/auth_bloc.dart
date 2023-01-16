import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/domain/usecases/post_auth.dart';

import '../../../../../main.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PostAuthUsecase postAuth;
  AuthBloc({required this.postAuth}) : super(const _Initial()) {
    on<_PostAuthEvent>((event, emit) async {
      final isValid = formKey.currentState!.validate();

      if (isValid) {
        final result = await postAuth(event.authEntity);
        result.fold((failure) => emit( _$_Error(message: failure.errorMessage)),
            (token) => emit(const _$_Success()));
      }
    });
  }
}
