import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/extension.dart';
import 'package:news_portal_megalab/resources/resources.dart';

import '../../resources/app_colors.dart';

class SliverAppbarPurple extends StatelessWidget {
  const SliverAppbarPurple({
    Key? key,
    required this.title,
    required this.flexibleSpaceParam,
  }) : super(key: key);

  final String title;
  final bool flexibleSpaceParam;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: AppColors.colorWhite,
      leadingWidth: context.width / 4,
      leading: InkWell(
        onTap: () => context.router.push(const HomeScreenRoute()),
        child: SvgPicture.asset(
          Svgs.megalabIconPurple,
          fit: BoxFit.scaleDown,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () => context.router.push(const SearchScreenRoute()),
            icon: SvgPicture.asset(
              Svgs.purpleSearch,
              height: 20,
            )),
        IconButton(
            onPressed: () => context.router.push(const ProfileScreenRoute()),
            icon: SvgPicture.asset(
              Svgs.purpleProfile,
              height: 20,
            )),
        IconButton(
         
          onPressed: () => AppKeys.drawerKey.currentState!.openEndDrawer(),
          icon: SvgPicture.asset(
            Svgs.purpleMenu,
            height: 20,
          ),
        ),
      ],
      pinned: true,
      expandedHeight: flexibleSpaceParam ? context.height / 5 : 0,
      flexibleSpace: flexibleSpaceParam
          ? FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                title,
                style: AppConstants.textBlackw500s24,
              ),
            )
          : null,
    );
  }
}
