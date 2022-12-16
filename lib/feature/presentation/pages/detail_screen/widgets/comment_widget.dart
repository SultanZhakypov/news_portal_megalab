import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Олег Петров', style: AppConstants.textBlackw500s18),
        const SizedBox(height: 7),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
          style: AppConstants.textLightGreyw400s16,
        ),
        const SizedBox(height: 7),
        Row(
          children: [
            const Text('30.11.2022', style: AppConstants.textLightGreyw400s16),
            const SizedBox(width: 25),
            InkWell(
              onTap: () {},
              child: const Text(
                'Ответить',
                style: AppConstants.textPurplew400s16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
