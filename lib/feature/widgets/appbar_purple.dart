import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      backgroundColor: AppColors.colorWhite,
      leadingWidth: context.width / 3,
      leading: SvgPicture.asset(
        Svgs.megalabIconPurple,
        fit: BoxFit.scaleDown,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Svgs.purpleSearch,
              height: 20,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Svgs.purpleProfile,
              height: 20,
            )),
        IconButton(
          onPressed: () {},
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
                style: AppConstants.textBlackw500s30,
              ),
            )
          : null,
    );
  }
}
