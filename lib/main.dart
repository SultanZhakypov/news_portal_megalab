import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_portal_megalab/feature/auth/presentation/pages/authorized_screen.dart';
import 'package:news_portal_megalab/feature/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'feature/widgets/app_unfocuser.dart';
import 'generated/codegen_loader.g.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  runApp(const InitLocaleWidget(child: MyApp()));
}

final globalKey = GlobalKey<ScaffoldMessengerState>();
final formKey = GlobalKey<FormState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        scaffoldMessengerKey: globalKey,
        debugShowCheckedModeBanner: false,
        title: 'News Portal',
        home: const Scaffold(
          backgroundColor: AppColors.colorWhite,
          body: AuthorizedScreen(),
        ),
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
          )
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
