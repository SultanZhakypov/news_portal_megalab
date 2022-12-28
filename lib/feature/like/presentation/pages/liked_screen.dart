import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
      ),
    );
  }
}
