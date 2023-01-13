import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key, required this.comment});

  final CommentEntity comment;
  
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${comment.user.name} ${comment.user.lastName}',
            style: AppConstants.textBlackw500s18),
        const SizedBox(height: 7),
        Text(
          comment.text,
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
