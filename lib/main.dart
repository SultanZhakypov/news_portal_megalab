import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_portal_megalab/core/error/blocs_observer.dart';
import 'package:news_portal_megalab/core/routes/routes.gr.dart';
import 'package:news_portal_megalab/feature/register/presentation/bloc/register_bloc.dart';
import 'feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'feature/detail/presentation/bloc/comment/comment_bloc.dart';
import 'feature/detail/presentation/bloc/detail/detail_bloc.dart';
import 'feature/global/cubit/global_cubit.dart';
import 'feature/home/presentation/bloc/get_all_post_bloc/get_post_list_bloc.dart';
import 'feature/home/presentation/bloc/search_bloc/search_bloc.dart';
import 'feature/profile/presentation/bloc/get_post/getposts_bloc.dart';
import 'feature/profile/presentation/bloc/get_user/getuser_bloc.dart';
import 'feature/profile/presentation/bloc/post_profile/postprofile_bloc.dart';
import 'feature/profile/presentation/bloc/put_user/put_user_bloc.dart';
import 'feature/widgets/app_unfocuser.dart';
import 'generated/codegen_loader.g.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  Bloc.observer = BlocsObserver();
  runApp(const InitLocaleWidget(child: MyApp()));
}

final globalKey = GlobalKey<ScaffoldMessengerState>();

final formKey = GlobalKey<FormState>();
final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        scaffoldMessengerKey: globalKey,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class InitWidget extends StatelessWidget {
  const InitWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di.sl<RegisterBloc>(),
          ),
          BlocProvider(
            create: (context) => di.sl<AuthBloc>(),
          ),
          BlocProvider(
            create: (context) => di.sl<GlobalCubit>(),
          ),
          BlocProvider(
            create: (context) => di.sl<GetAllPostBloc>()
              ..add(const GetPostListEvent.getPostsEvent()),
          ),
          BlocProvider(
            create: (context) => di.sl<SearchBloc>(),
          ),
          BlocProvider(
            create: (context) => di.sl<DetailBloc>(),
          ),
          BlocProvider(
            create: (context) => di.sl<CommentBloc>(),
          ),
          BlocProvider(
            create: (context) => di.sl<PostprofileBloc>(),
          ),
          BlocProvider(
            create: (context) =>
                di.sl<GetuserBloc>()..add(const GetuserEvent.getUser()),
          ),
          BlocProvider(
            create: (context) =>
                di.sl<GetpostsBloc>()..add(const GetpostsEvent.getPosts()),
          ),
          BlocProvider(
            create: (context) => di.sl<PutUserBloc>(),
          ),
        ],
        child: child,
      ),
    );
  }
}

class InitLocaleWidget extends StatelessWidget {
  const InitLocaleWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('ru'),
      ],
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      saveLocale: true,
      fallbackLocale: const Locale('ru'),
      child: child,
    );
  }
}
