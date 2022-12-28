import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/app_shows.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppbarWhite(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => AppShows.showFilter(context),
                  icon: SvgPicture.asset(Svgs.filterIcon),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
