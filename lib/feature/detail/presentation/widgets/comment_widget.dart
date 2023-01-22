import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/presentation/widgets/comment_answer_widget.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({super.key, required this.comment});

  final Comment comment;

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  final isSubmitAnswer = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${widget.comment.user.name} ${widget.comment.user.lastName}',
            style: AppConstants.textBlackw500s18),
        const SizedBox(height: 7),
        Text(
          widget.comment.text,
          style: AppConstants.textLightGreyw400s16,
        ),
        const SizedBox(height: 7),
        Row(
          children: [
            const Text('30.11.2022', style: AppConstants.textLightGreyw400s16),
            const SizedBox(width: 25),
            ValueListenableBuilder(
                valueListenable: isSubmitAnswer,
                builder: (context, _, __) {
                  return InkWell(
                    onTap: () {
                      log(isSubmitAnswer.value.toString());
                      isSubmitAnswer.value = true;
                    },
                    child: const Text(
                      'Ответить',
                      style: AppConstants.textPurplew400s16,
                    ),
                  );
                }),
          ],
        ),
        Visibility(
            visible: isSubmitAnswer.value,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 24, bottom: 24),
              child: CommentAnswerTextField(),
            )),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.comment.child.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) =>
                CommentAnswerWidget(comment: widget.comment.child[index])),
      ],
    );
  }
}
