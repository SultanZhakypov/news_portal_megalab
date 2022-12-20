import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/appbar_white.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/items_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverAppbarWhite(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 17),
            sliver: SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Svgs.filterIcon),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 15,
              (context, index) {
                return const ItemsWidget();
              },
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
