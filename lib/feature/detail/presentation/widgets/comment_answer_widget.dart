import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/presentation/bloc/comment_reply/comment_reply_bloc.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class CommentAnswerWidget extends StatelessWidget {
  const CommentAnswerWidget({
    Key? key,
    required this.comment,
  }) : super(key: key);

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
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
          const Text('30.11.2022', style: AppConstants.textLightGreyw400s16),
        ],
      ),
    );
  }
}

class CommentAnswerTextField extends StatefulWidget {
  const CommentAnswerTextField({
    Key? key,
    required this.comment,
    required this.id,
  }) : super(key: key);

  final Comment comment;
  final int id;

  @override
  State<CommentAnswerTextField> createState() => _CommentAnswerTextFieldState();
}

class _CommentAnswerTextFieldState extends State<CommentAnswerTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: Row(
        children: [
          const Text('Вы', style: AppConstants.textBlackw500s18),
          const SizedBox(width: 7),
          Expanded(
            child: TextField(
              controller: _controller,
              style: AppConstants.textBlackw400s14,
              cursorColor: AppColors.colorPurple,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.colorPurple,
                      width: 2,
                    )),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: AppColors.colorGrey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 7),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.colorPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () => BlocProvider.of<CommentReplyBloc>(context).add(
              CommentReplyEvent.postCommentReply(
                id: widget.id,
                text: _controller.text,
                parent: widget.comment.id,
              ),
            ),
            child: SvgPicture.asset(
              Svgs.arrowUp,
            ),
          ),
        ],
      ),
    );
  }
}
