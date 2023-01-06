import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/routes/routes.gr.dart';
import 'package:news_portal_megalab/feature/splash/cubit/global_cubit.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<GlobalCubit, GlobalState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            authorized: () => context.router.pushAndPopUntil(
              const HomeScreenRoute(),
              predicate: (_) => false,
            ),
            unauthorized: () => context.router.pushAndPopUntil(
              const AuthorizedScreenRoute(),
              predicate: (_) => false,
            ),
          );
        },
        child: Center(
          child: SvgPicture.asset(Svgs.megalabIconPurple),
        ),
      ),
    );
  }
}
