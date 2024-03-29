import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/feature/home/domain/entities/post_entity.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/delete_post/delete_post_bloc.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';

import '../../../../resources/export_resources.dart';
import '../../../home/presentation/widgets/app_shows.dart';
import '../../../widgets/cached_image.dart';

class ItemsProfileWidget extends StatelessWidget {
  const ItemsProfileWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedImage(imageUrl: post.image ?? ''),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateTime.now().toString(),
              style: AppConstants.textLightGreyw400s16,
            ),
            IconButton(
              onPressed: () => BlocProvider.of<DeletePostBloc>(context)
                  .add(DeletePostEvent.deletePost(id: post.id)),
              icon: SvgPicture.asset(Svgs.trash),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            post.title,
            style: AppConstants.textBlackw500s24,
          ),
        ),
        Text(
          post.text,
          style: AppConstants.textLightGreyw400s16,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () => context.router.push(DetailScreenRoute(id: post.id)),
          child: Text(
            LocaleKeys.read_next.tr(),
            style: AppConstants.textPurplew400s16,
          ),
        ),
        const SizedBox(height: 18),
        IconButton(
          onPressed: () => AppShows.showShare(context),
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
