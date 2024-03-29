import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/extension.dart';
import 'package:news_portal_megalab/resources/resources.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 5,
      color: AppColors.colorBlack,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              Svgs.megalabIconWhite,
              fit: BoxFit.scaleDown,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => context.router.push(const ProfileScreenRoute()),
                  child: Text(
                    LocaleKeys.my_profile.tr(),
                    style: AppConstants.textWhitew400s16,
                  ),
                ),
                InkWell(
                  onTap: () => context.router.push(const LikedScreenRoute()),
                  child: Text(
                    LocaleKeys.izbrannye_news.tr(),
                    style: AppConstants.textWhitew400s16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
