import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';

import '../../../../generated/locale_keys.g.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverAppbarPurple(
              title: LocaleKeys.izbrannye.tr(),
              flexibleSpaceParam: true,
            ),
            // SliverPadding(
            //   padding: const EdgeInsets.only(top: 17),
            //   sliver: SliverList(
            //     delegate: SliverChildBuilderDelegate(
            //       childCount: 15,
            //       (context, index) {
            //         return const ItemsWidget(
            //           text: '',
            //           title: '',
            //         );
            //       },
            //     ),
            //   ),
            // ),
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
