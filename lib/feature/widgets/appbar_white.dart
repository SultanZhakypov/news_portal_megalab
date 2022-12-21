import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/widgets/app_menu.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/extension.dart';
import 'package:news_portal_megalab/resources/resources.dart';

import '../../resources/app_colors.dart';

class SliverAppbarWhite extends StatelessWidget {
  const SliverAppbarWhite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.colorBlack,
      leadingWidth: context.width / 3,
      leading: SvgPicture.asset(
        Svgs.megalabIconWhite,
        fit: BoxFit.scaleDown,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Svgs.whiteSearch,
              height: 20,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Svgs.whiteProfile,
              height: 20,
            )),
        IconButton(
            onPressed: () => AppMenuShow.showMenu(context),
            icon: SvgPicture.asset(
              Svgs.whiteMenu,
              height: 20,
            )),
      ],
      pinned: true,
      expandedHeight: context.height / 5,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: Image.asset(
          Images.appbarBackgroundImage,
          fit: BoxFit.cover,
        ),
        title: const Text(
          'Новости',
          style: AppConstants.textWhitew500s30,
        ),
      ),
    );
  }
}
