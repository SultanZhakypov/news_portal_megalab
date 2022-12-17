import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/extension.dart';
import 'package:news_portal_megalab/feature/presentation/pages/profile_screen/widgets/profile_textfield.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/custom_button.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/items_widget.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../../../resources/resources.dart';
import '../../widgets/footer_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.colorWhite,
              leadingWidth: context.width / 3,
              leading: SvgPicture.asset(
                Svgs.megalabIconPurple,
                fit: BoxFit.scaleDown,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Svgs.purpleSearch,
                      height: 20,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Svgs.purpleProfile,
                      height: 20,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Svgs.purpleMenu,
                    height: 20,
                  ),
                ),
              ],
              pinned: true,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              sliver: SliverList(
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
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Мои публикации',
                    style: AppConstants.textBlackw500s24,
                  ),
                  CustomButtonSvg(
                    svg: Svgs.plus,
                    onPress: () {},
                  )
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 17),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 15,
                  (context, index) {
                    return const ItemsWidget();
                  },
                ),
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: FooterWidget(),
            )
          ],
        ),
      ),
    );
  }
}
