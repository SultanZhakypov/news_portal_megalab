import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/domain/usecases/post_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PostAuthUsecase postAuth;
  AuthBloc({required this.postAuth}) : super(AuthInitialState()) {
    on<AuthPostEvent>((event, emit) async {
      await postAuth(event.authEntity);
    });
  }
}
