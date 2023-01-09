import 'package:flutter_bloc/flutter_bloc.dart';

class BlocsObserver extends BlocObserver {
  @override
  // void onChange(BlocBase bloc, Change change) {
  //   super.onChange(bloc, change);
  //   print('${bloc.runtimeType}$change');
  //   // смотрю изменения по стейтам. Проще понять что сейчас происходит и ошибки отлавливать
  // }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print(bloc.toString());
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    print(bloc);
    print(event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    print(bloc);
    print(error);
    print(stackTrace);
  }
}
