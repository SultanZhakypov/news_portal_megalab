import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/detail_entity.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

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
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Svgs.unlike),
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
          child: Image.asset(Images.justImage),
        ),
        Text(
          post.text,
          style: AppConstants.textLightGreyw400s16,
        ),
      ],
    );
  }
}
