import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:news_portal_megalab/feature/profile/domain/entities/user_entity.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/profile_textfield.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

import '../../../widgets/custom_button.dart';

class SliverProfileEditWidget extends StatefulWidget {
  const SliverProfileEditWidget({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserEntity user;

  @override
  State<SliverProfileEditWidget> createState() =>
      _SliverProfileEditWidgetState();
}

class _SliverProfileEditWidgetState extends State<SliverProfileEditWidget> {
  late TextEditingController _lastName;
  late TextEditingController _name;
  late TextEditingController _nickName;
  @override
  void initState() {
    _lastName = TextEditingController(text: widget.user.lastName);
    _name = TextEditingController(text: widget.user.name);
    _nickName = TextEditingController(text: widget.user.nickname);
    super.initState();
  }

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
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.colorLightGrey,
                    backgroundImage: AssetImage(widget.user.image.toString()),
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
                    ProfileTextFieldWidget(
                      title: 'Фамилия',
                      controller: _lastName,
                    ),
                    ProfileTextFieldWidget(
                      title: 'Имя',
                      controller: _name,
                    ),
                    ProfileTextFieldWidget(
                      title: 'Никнейм',
                      controller: _nickName,
                    ),
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
