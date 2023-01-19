import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../service_locator.dart' as di;

import '../../core/routes/routes.gr.dart';
import '../../generated/locale_keys.g.dart';
import '../auth/presentation/bloc/logout_cubit/logout_cubit.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<LogoutCubit>(),
      child: SizedBox(
        width: context.width / 1.5,
        child: Builder(builder: (context) {
          return Drawer(
            backgroundColor: AppColors.colorWhite,
            child: BlocListener<LogoutCubit, LogoutState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    success: (isLogout) {
                      AppKeys.drawerKey.currentState!.closeEndDrawer();
                      isLogout == true;
                      context.router.pushAndPopUntil(
                          const AuthorizedScreenRoute(),
                          predicate: (route) => false);
                    });
              },
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Center(
                      child: SvgPicture.asset(Svgs.megalabIconPurple),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(Svgs.purpleProfile),
                    title: Text(
                      LocaleKeys.my_profile.tr(),
                      style: AppConstants.textBlackw400s16,
                    ),
                    onTap: () {
                      AppKeys.drawerKey.currentState!.closeEndDrawer();
                      context.router.push(const ProfileScreenRoute());
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset(Svgs.liked),
                    title: Text(
                      LocaleKeys.izbrannye.tr(),
                      style: AppConstants.textBlackw400s16,
                    ),
                    onTap: () {
                      AppKeys.drawerKey.currentState!.closeEndDrawer();

                      context.router.push(const LikedScreenRoute());
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset(Svgs.x),
                    title: Text(
                      LocaleKeys.logout.tr(),
                      style: AppConstants.textBlackw400s16,
                    ),
                    onTap: () => BlocProvider.of<LogoutCubit>(context).logout(),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
