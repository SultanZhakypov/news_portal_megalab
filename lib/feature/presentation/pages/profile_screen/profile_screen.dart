import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/presentation/pages/profile_screen/widgets/profile_edit_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/custom_button.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/items_widget.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

import '../../../../resources/resources.dart';
import '../../widgets/appbar_purple.dart';
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
            const SliverAppbarPurple(
              title: '',
              flexibleSpaceParam: false,
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 32),
              sliver: SliverProfileEditWidget(),
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
