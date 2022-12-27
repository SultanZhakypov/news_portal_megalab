import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_portal_megalab/feature/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:news_portal_megalab/feature/register/presentation/pages/unauthorized_screen.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'feature/widgets/app_unfocuser.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

final globalKey = GlobalKey<ScaffoldMessengerState>();
final formKey = GlobalKey<FormState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp(
        scaffoldMessengerKey: globalKey,
        debugShowCheckedModeBanner: false,
        title: 'News Portal',
        home: const Scaffold(
          backgroundColor: AppColors.colorWhite,
          body: UnAuthorizedScreen(),
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
