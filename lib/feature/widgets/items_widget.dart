import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/core/routes/routes.gr.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../generated/locale_keys.g.dart';
import '../../resources/resources.dart';
import '../home/presentation/widgets/app_shows.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    Key? key,
    required this.posts,
  }) : super(key: key);
  final PostEntity posts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Images.something),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateTime.now().toString(),
              style: AppConstants.textLightGreyw400s16,
            ),
            IconButton(
              onPressed: () {},
              icon: posts.isLiked
                  ? SvgPicture.asset(Svgs.liked)
                  : SvgPicture.asset(Svgs.unlike),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            posts.title,
            style: AppConstants.textBlackw500s24,
          ),
        ),
        Text(
          posts.text,
          style: AppConstants.textLightGreyw400s16,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            context.router.push(DetailScreenRoute(id: posts.id));
          },
          child: Text(
            LocaleKeys.read_next.tr(),
            style: AppConstants.textPurplew400s16,
          ),
        ),
        const SizedBox(height: 18),
        IconButton(
          onPressed: () => AppShows.showSnackBarUrl(context),
          icon: SvgPicture.asset(Svgs.share),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Divider(
            color: AppColors.colorGrey,
            height: 4,
          ),
        ),
      ],
    );
  }
}
