import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';

import '../../../resources/app_constants.dart';

part 'global_state.dart';
part 'global_cubit.freezed.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(const GlobalState.loading()) {
    init();
  }

  init() async {
    final token = await SharedPrefs.getData(AppConstants.token);

    if (token != null) {
      emit(const GlobalState.authorized());
    } else {
      emit(const GlobalState.unauthorized());
    }
  }
}
