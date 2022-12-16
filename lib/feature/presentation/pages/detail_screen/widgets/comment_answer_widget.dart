import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../../../../resources/resources.dart';

class CommentAnswerWidget extends StatelessWidget {
  const CommentAnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Олег Петров', style: AppConstants.textBlackw500s18),
          const SizedBox(height: 7),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
            style: AppConstants.textLightGreyw400s16,
          ),
          const SizedBox(height: 7),
          const Text('30.11.2022', style: AppConstants.textLightGreyw400s16),
          const SizedBox(height: 7),
          SizedBox(
            height: 27,
            child: Row(
              children: [
                const Text('Вы', style: AppConstants.textBlackw500s18),
                const SizedBox(width: 7),
                Expanded(
                  child: TextField(
                    style: AppConstants.textBlackw400s14,
                    cursorColor: AppColors.colorPurple,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
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
                  onPressed: () {},
                  child: SvgPicture.asset(
                    Svgs.arrowUp,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
