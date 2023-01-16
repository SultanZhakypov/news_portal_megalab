import 'package:get_it/get_it.dart';
import 'package:news_portal_megalab/core/platform/dio_settings.dart';
import 'package:news_portal_megalab/feature/auth/data/datasources/remote_auth.dart';
import 'package:news_portal_megalab/feature/auth/data/repositories/auth_repoimpl.dart';
import 'package:news_portal_megalab/feature/auth/domain/repositories/auth_repo.dart';
import 'package:news_portal_megalab/feature/auth/domain/usecases/post_auth.dart';
import 'package:news_portal_megalab/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:news_portal_megalab/feature/detail/data/datasources/remote_comment.dart';
import 'package:news_portal_megalab/feature/detail/data/datasources/remote_detail.dart';
import 'package:news_portal_megalab/feature/detail/data/repositories/comment_repoimpl.dart';
import 'package:news_portal_megalab/feature/detail/data/repositories/detail_repoimpl.dart';
import 'package:news_portal_megalab/feature/detail/domain/repositories/detail_repo.dart';
import 'package:news_portal_megalab/feature/detail/domain/usecases/get_detail.dart';
import 'package:news_portal_megalab/feature/detail/domain/usecases/post_comment.dart';
import 'package:news_portal_megalab/feature/detail/presentation/bloc/comment/comment_bloc.dart';
import 'package:news_portal_megalab/feature/detail/presentation/bloc/detail/detail_bloc.dart';
import 'package:news_portal_megalab/feature/home/data/datasources/remote_home.dart';
import 'package:news_portal_megalab/feature/home/data/repositories/postlist_repoimpl.dart';
import 'package:news_portal_megalab/feature/home/domain/repositories/postlist_repo.dart';
import 'package:news_portal_megalab/feature/home/domain/usecases/get_all_post.dart';
import 'package:news_portal_megalab/feature/home/domain/usecases/search_Post.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_getpost.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_postprofile.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_put_user.dart';
import 'package:news_portal_megalab/feature/profile/data/datasources/remote_user.dart';
import 'package:news_portal_megalab/feature/profile/data/repositories/postprofile_repoimpl.dart';
import 'package:news_portal_megalab/feature/profile/data/repositories/user_repoimpl.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/get_posts_repo.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/postprofile_repo.dart';
import 'package:news_portal_megalab/feature/profile/domain/repositories/user_repo.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/get_posts_usecase.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/postprofile_usecase.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/user_put_usecase.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/user_usecase.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/get_post/getposts_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/get_user/getuser_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/post_profile/postprofile_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/put_user/put_user_bloc.dart';
import 'package:news_portal_megalab/feature/register/data/datasources/remote_register.dart';
import 'package:news_portal_megalab/feature/register/data/repositories/register_repoimpl.dart';
import 'package:news_portal_megalab/feature/register/domain/repositories/register_repo.dart';
import 'package:news_portal_megalab/feature/register/domain/usecases/post_register.dart';
import 'package:news_portal_megalab/feature/global/cubit/global_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'feature/detail/domain/repositories/comment_repo.dart';
import 'feature/home/presentation/bloc/get_all_post_bloc/get_post_list_bloc.dart';
import 'feature/profile/data/repositories/get_post_repoimpl.dart';
import 'feature/register/presentation/bloc/register_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //External
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => prefs);

//Bloc
  sl.registerFactory(() => RegisterBloc(postRegister: sl()));
  sl.registerFactory(() => AuthBloc(postAuth: sl()));
  sl.registerFactory(() => GlobalCubit());
  sl.registerFactory(() => GetAllPostBloc(getPostsUsecase: sl()));
  sl.registerFactory(() => SearchBloc(searchPostUseCase: sl()));
  sl.registerFactory(() => DetailBloc(getDetailUsecase: sl()));
  sl.registerFactory(() => CommentBloc(postCommentUsecase: sl()));
  sl.registerFactory(() => PostprofileBloc(postProfileUsecase: sl()));
  sl.registerFactory(() => GetuserBloc(userUsecase: sl()));
  sl.registerFactory(() => GetpostsBloc(getPostsUsecase: sl()));
  sl.registerFactory(() => PutUserBloc(userPutUsecase: sl()));

//Usecases
  sl.registerLazySingleton(() => PostRegisterUseCase(sl()));
  sl.registerLazySingleton(() => PostAuthUsecase(sl()));
  sl.registerLazySingleton(() => GetAllPostUsecase(sl()));
  sl.registerLazySingleton(() => SearchPostUseCase(postListRepo: sl()));
  sl.registerLazySingleton(() => GetDetailUsecase(detailRepo: sl()));
  sl.registerLazySingleton(() => PostCommentUsecase(commentRepo: sl()));
  sl.registerLazySingleton(() => PostProfileUsecase(postProfileRepo: sl()));
  sl.registerLazySingleton(() => UserUsecase(userRepo: sl()));
  sl.registerLazySingleton(() => GetPostsUsecase(getPostsRepo: sl()));
  sl.registerLazySingleton(() => UserPutUsecase(userRepo: sl()));

//Repository
  sl.registerLazySingleton<RegisterRepo>(
      () => RegisterRepoImpl(remoteRegisterSource: sl()));
  sl.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(remoteAuthSource: sl()));
  sl.registerLazySingleton<PostListRepo>(
      () => PostListRepoImpl(remotePostList: sl()));
  sl.registerLazySingleton<DetailRepo>(
      () => DetailRepoImpl(remoteDetail: sl()));
  sl.registerLazySingleton<CommentRepo>(
      () => CommentRepoImpl(remoteComment: sl()));
  sl.registerLazySingleton<PostProfileRepo>(
      () => PostProfileRepoImpl(remotePostProfile: sl()));
  sl.registerLazySingleton<UserRepo>(
      () => UserRepoImpl(remoteUser: sl(), remotePutUser: sl()));
  sl.registerLazySingleton<GetPostsRepo>(
      () => GetpostsRepoImpl(remoteGetPost: sl()));

//DataSources
  sl.registerLazySingleton<RemoteRegisterSource>(
      () => RemoteRegisterSourceImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemoteAuthSource>(
      () => RemoteAuthimpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemotePostList>(
      () => RemotePostListImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemoteDetail>(
      () => RemoteDetailImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemoteComment>(
      () => RemoteCommentImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemotePostProfile>(
      () => RemotePostProfileImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemoteUser>(
      () => RemoteUserImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemoteGetPost>(
      () => RemoteGetPostImpl(dio: DioSettings().dio));
  sl.registerLazySingleton<RemotePutUser>(
      () => RemotePutUserImpl(dio: DioSettings().dio));
}
