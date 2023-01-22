import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

import '../../../like/presentation/bloc/cubit/post_like_cubit.dart';
import '../../../widgets/cached_image.dart';

class DetailItemWidget extends StatelessWidget {
  const DetailItemWidget({super.key, required this.post});
  final DetailEntity post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(DateTime.now().toString(),
                style: AppConstants.textLightGreyw400s16),
           LikeButton(
                  isLiked: post.isLiked,
                  likeBuilder: (isLiked) =>
                      SvgPicture.asset(isLiked ? Svgs.liked : Svgs.unlike),
                  onTap: (isLiked) async {
                    BlocProvider.of<PostLikeCubit>(context)
                        .button(id: post.id);
                    return !isLiked;
                  },
                ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(post.title, style: AppConstants.textBlackw500s24),
        ),
        Text(
          post.shortDesc,
          style: AppConstants.textLightGreyw400s16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CachedImage(imageUrl: post.image ?? ''),
        ),
        Text(
          post.text,
          style: AppConstants.textLightGreyw400s16,
        ),
      ],
    );
  }
}
