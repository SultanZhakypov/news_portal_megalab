import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(const LogoutState.initial());

  logout() async {
    try {
      final isLogout = await SharedPrefs.clearData();
      if (isLogout) {
        emit(const _$_Success());
      }
    } catch (e) {
      emit(const _$_Error());
    }
  }
}
