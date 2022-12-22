import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/register/presentation/pages/unauthorized_screen.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'feature/widgets/app_unfocuser.dart';

void main() => runApp(const MyApp());

final globalKey = GlobalKey<ScaffoldMessengerState>();
final formKey = GlobalKey<FormState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
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
