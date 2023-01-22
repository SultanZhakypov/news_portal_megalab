import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import 'feature/widgets/app_unfocuser.dart';
import 'generated/codegen_loader.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: MaterialApp.router(
        
        routeInformationParser: AppKeys.appRouter.defaultRouteParser(),
        routerDelegate: AppKeys.appRouter.delegate(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        scaffoldMessengerKey: AppKeys.globalKey,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Localization extends StatelessWidget {
  const Localization({
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
