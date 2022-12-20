import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

import '../../../widgets/custom_button.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 32,
      ),
      child: SizedBox(
        height: 32,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: AppConstants.textBlackw400s16,
                cursorColor: AppColors.colorPurple,
                decoration: InputDecoration(
                  hintText: 'Напишите комментарий',
                  hintStyle: AppConstants.textLightGreyw400s16,
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
            const SizedBox(width: 11),
            CustomButtonSvg(
              svg: Svgs.arrowUp,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
