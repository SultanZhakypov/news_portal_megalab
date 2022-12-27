import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:news_portal_megalab/core/platform/dio_settings.dart';
import 'package:news_portal_megalab/core/platform/network_info.dart';
import 'package:news_portal_megalab/feature/register/data/datasources/remote_register.dart';
import 'package:news_portal_megalab/feature/register/data/repositories/register_repoimpl.dart';
import 'package:news_portal_megalab/feature/register/domain/repositories/register_repo.dart';
import 'package:news_portal_megalab/feature/register/domain/usecases/post_register.dart';
import 'package:news_portal_megalab/feature/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => InternetConnectionCheckerPlus());

  //External
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => prefs);

//Bloc
  sl.registerFactory(() => RegisterBloc(postRegister: sl()));

//Usecases
  sl.registerLazySingleton(() => PostRegisterUseCase(sl()));

//Repository
  sl.registerLazySingleton<RegisterRepo>(
      () => RegisterRepoImpl(remoteRegisterSource: sl(), networkInfo: sl()));

//DataSources
  sl.registerLazySingleton<RemoteRegisterSource>(
      () => RemoteRegisterSourceImpl(dio: DioSettings().dio));
}
