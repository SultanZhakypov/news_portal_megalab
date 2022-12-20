import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/items_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/footer_widget.dart';

import '../../widgets/appbar_purple.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverAppbarPurple(
            title: 'Избранные',
            flexibleSpaceParam: true,
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
    );
  }
}
