import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../../resources/resources.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Images.justImage),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '29.11.2022',
              style: AppConstants.textLightGreyw400s16,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Svgs.unlike),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Заголовок новости',
            style: AppConstants.textBlackw500s24,
          ),
        ),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
          style: AppConstants.textLightGreyw400s16,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Читать дальше>>',
            style: AppConstants.textPurplew400s16,
          ),
        ),
        const SizedBox(height: 18),
        IconButton(
          onPressed: () {},
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
