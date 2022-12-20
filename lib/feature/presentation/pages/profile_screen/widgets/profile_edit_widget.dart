import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/presentation/pages/profile_screen/widgets/profile_textfield.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/resources.dart';

import '../../../widgets/custom_button.dart';

class SliverProfileEditWidget extends StatelessWidget {
  const SliverProfileEditWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.colorLightGrey,
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      const Text('Добавить фото',
                          style: AppConstants.textBlackw400s14),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Svgs.download),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Удалить',
                          style: AppConstants.textBlackw400s14),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Svgs.trash),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileTextFieldWidget(title: 'Фамилия'),
                    const ProfileTextFieldWidget(title: 'Имя'),
                    const ProfileTextFieldWidget(title: 'Никнейм'),
                    CustomButtonText(
                      title: 'Сохранить',
                      onPress: () {},
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
