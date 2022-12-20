import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/profile/presentation/pages/profile_screen.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'feature/widgets/app_unfocuser.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppUnfocuser(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News Portal',
        home: Scaffold(
          backgroundColor: AppColors.colorWhite,
          body: ProfileScreen(),
        ),
      ),
    );
  }
}
